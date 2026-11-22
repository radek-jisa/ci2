import sys
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


def create_graph(input_csv: str = "graph.csv", output_png: str = "graph.png") -> None:
    """Read x and y columns from a CSV file and save a plot as a PNG image."""
    data = pd.read_csv(input_csv)
    x = np.array(data["x"])
    y = np.array(data["y"])

    plt.figure(figsize=(8, 5))
    plt.plot(x, y, marker="o", linestyle="-", color="b", label="y = sin(x)")
    plt.title("Sine Function: y = sin(x)")
    plt.xlabel("x [rad]")
    plt.ylabel("y")
    plt.grid(True)
    plt.legend()

    plt.savefig(output_png)
    plt.show()


def main(argv: list[str]) -> None:
    """Parse command-line arguments and generate the graph."""
    args = [arg for arg in argv[1:] if not arg.startswith("-") and not arg.endswith(".json")]
    input_csv = args[0] if len(args) > 0 else "graph.csv"
    output_png = args[1] if len(args) > 1 else "graph.png"
    create_graph(input_csv, output_png)


if __name__ == "__main__":
    main(sys.argv)