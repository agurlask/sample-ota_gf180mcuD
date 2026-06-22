import numpy as np
import matplotlib.pyplot as plt


def read_ngspice_raw(filename):
    """
    Minimal parser for ngspice binary .raw files.
    Returns a dict mapping vector name -> numpy array (complex for AC, real otherwise).
    """
    with open(filename, 'rb') as f:
        data = f.read()

    # Header is ASCII, ends right after the "Binary:\n" marker
    marker = b'Binary:\n'
    header_end = data.find(marker)
    if header_end == -1:
        raise ValueError(
            "Could not find 'Binary:' marker - is this an ASCII raw file? "
            "This parser expects binary format (remove 'set filetype=ascii')."
        )
    header_end += len(marker)
    header = data[:header_end].decode('ascii', errors='ignore')
    binary_data = data[header_end:]

    n_vars = 0
    n_points = 0
    flags = ''
    var_names = []

    lines = header.splitlines()
    in_vars_section = False
    for line in lines:
        if line.startswith('No. Variables:'):
            n_vars = int(line.split(':')[1].strip())
        elif line.startswith('No. Points:'):
            n_points = int(line.split(':')[1].strip())
        elif line.startswith('Flags:'):
            flags = line.split(':')[1].strip()
        elif line.startswith('Variables:'):
            in_vars_section = True
            continue
        elif line.startswith('Binary:'):
            in_vars_section = False
        elif in_vars_section and line.strip():
            parts = line.strip().split('\t')
            parts = [p for p in parts if p != '']
            if len(parts) >= 2:
                var_names.append(parts[1])

    if n_vars == 0 or n_points == 0 or not var_names:
        raise ValueError("Failed to parse raw file header - check format/contents.")

    complex_data = 'complex' in flags.lower()
    dtype = np.complex128 if complex_data else np.float64

    raw_array = np.frombuffer(binary_data, dtype=dtype)
    expected = n_vars * n_points
    raw_array = raw_array[:expected].reshape(n_points, n_vars)

    result = {}
    for i, name in enumerate(var_names):
        result[name] = raw_array[:, i]

    return result


if __name__ == '__main__':
    data = read_ngspice_raw('top_level/output.raw')

    print("Available vectors:", list(data.keys()))

    freq = data['frequency'].real
    vdiff = data['vdiff']

    mag_db = 20 * np.log10(np.abs(vdiff))
    phase_deg = np.angle(vdiff, deg=True)

    fig, ax1 = plt.subplots(figsize=(8, 5))

    ax1.semilogx(freq, mag_db, color='tab:blue', label='Magnitude (dB)')
    ax1.set_xlabel('Frequency (Hz)')
    ax1.set_ylabel('Magnitude (dB)', color='tab:blue')
    ax1.tick_params(axis='y', labelcolor='tab:blue')
    ax1.grid(True, which='both')

    ax2 = ax1.twinx()
    ax2.semilogx(freq, phase_deg, color='tab:red', label='Phase (deg)')
    ax2.set_ylabel('Phase (deg)', color='tab:red')
    ax2.tick_params(axis='y', labelcolor='tab:red')

    plt.title('Differential Output: Gain and Phase vs Frequency')
    fig.tight_layout()
    plt.show()
