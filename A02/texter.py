import sys


class TextAnalyzer:
    """Class for analyzing digits and punctuation in a text file."""

    def __init__(self, filename):
        self.filename = filename

    def run(self):
        """Read the file and calculate the required metrics (task 5)."""
        try:
            with open(self.filename, "r", encoding="utf-8") as file:
                content = file.read()
        except FileNotFoundError:
            print(f"Error: File '{self.filename}' was not found.")
            sys.exit(1)
        except Exception as err:
            print(f"Error reading file: {err}")
            sys.exit(1)

        # 5a) Count all digits in the text file
        digit_count = sum(1 for char in content if char.isdigit())

        # 5b) Count specified punctuation characters: . , ; : ! ? -
        target_punctuation = {".", ",", ";", ":", "!", "?", "-"}
        punctuation_count = sum(
            1 for char in content if char in target_punctuation
        )

        # Print results to standard output
        print(f"Number of digits: {digit_count}")
        print(f"Number of punctuation characters: {punctuation_count}")


def print_help():
    """Print help information on how to use the script."""
    print("You did not specify a file for this script.")
    print("Usage: python texter.py <filename>")
    print("Example: python texter.py test.txt")


def main():
    """Main entry point for command line execution."""
    if len(sys.argv) < 2:
        print_help()
        sys.exit(0)

    filename = sys.argv[1]
    analyzer = TextAnalyzer(filename)
    analyzer.run()


if __name__ == "__main__":
    main()
