# Assignment A02 (Task 5)

This folder in the `ci2` repository contains a Python script `texter.py` that analyzes text files according to the requirements of Assignment A02 (Task 5).

## Features (Task 5)

The script processes a specified text file and outputs:
- **5a)** The total number of digits (`0-9`) present in the file.
- **5b)** The total number of specific punctuation characters (`.`, `,`, `;`, `:`, `!`, `?`, `-`).

## Requirements

- Python 3.x

## How to Clone the Repository

To clone this repository from GitHub to your local machine, run:

```bash
git clone https://github.com/radek-jisa/ci2.git
cd ci2/A02
```

## How to Run the Script

### Standard Execution

Pass the name of the file you want to process as the first parameter:

```bash
python texter.py test.txt
```

**Example Output:**

```text
Number of digits: 0
Number of punctuation characters: 86
```

### Displaying Help

If you run the script without any parameters, it will print help instructions:

```bash
python texter.py
```

**Output:**

```text
You did not specify a file for this script.
Usage: python texter.py <filename>
Example: python texter.py test.txt
```
