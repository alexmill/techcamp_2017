# Session 3 Exercises

## Reading/Writing Files in Python
Make sure you are familiar with how to read and write files in Python. Follow the tutorials below to get started.
- [Python 3 File I/O](https://en.wikibooks.org/wiki/Non-Programmer%27s_Tutorial_for_Python_3/File_IO)
- If you're not familiar with JSON, consider reading through this tutorial: [Reading/Writing JSON with Python](http://stackabuse.com/reading-and-writing-json-to-a-file-in-python/)

## Writing Command Line Scripts in Pyhton
- For a very basic introduction, see [this answer on Stack Overflow](https://stackoverflow.com/a/3987107/2628402) (be sure to read the question first)
  - Try to write and execute a basic Python script, using the command line.

First, create and save the code below as  `hello.py`:

```python
def hello():
    print("Hi :)")

if __name__ == "__main__":
    hello()
```

Then open a terminal, navigate to the location of the saved Python file (using `cd` command), and run:

```bash
python hello.py
```

Hopefully you see "Hi :)" printed directly to your console.

- Passing command line arguments
  - You can pass variables to your Python script from the command line. For example, `python hello.py "customVariable"`.
  - Read through the tutorial on the `argparse` module for more info: [Using argparse](https://docs.python.org/3/howto/argparse.html).

## Multiprocessing
- For a light intro to multiprocessing (parallel computing using the cores on your machine), go through the first 2 examples in this blog post: [An introduction to parallel programming using Python's multiprocessing module](http://sebastianraschka.com/Articles/2014_multiprocessing.html)
