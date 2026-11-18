# Assignment A06 – Sine Function Plot

## Description
This assignment solves task #5 ($y = \sin(x)$). The solution consists of:
- `graph.csv`: Dataset containing 25 pairs of `x` (in radians) and $y = \sin(x)$ values.
- `graph.py`: Python script that reads `graph.csv` using `pandas` and `numpy`, plots the sine curve using `matplotlib`, and saves the output to `graph.png`.
- `graph.png`: Generated plot of the sine function.
- `requirements.txt`: List of required Python dependencies.

## Setup and Verification

1. **Clone the repository and navigate to the `A06` folder:**
   ```bash
  git clone git@github.com:radek-jisa/ci2.git
  cd ci2/A06
   ```

2. **Create and activate a Python virtual environment:**
   ```bash
   python -m venv venv
   ```
   * On Windows:
     ```bash
     venv\Scripts\activate
     ```
   * On Linux/macOS:
     ```bash
     source venv/bin/activate
     ```

3. **Install required packages:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run the script to generate `graph.png`:**
   ```bash
   python graph.py
   ```
   *(Optionally, you can pass custom input/output filenames as command-line arguments: `python graph.py graph.csv graph.png`.)*