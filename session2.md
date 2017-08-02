# Session 2 Excercises: Hands on with Python and/or R

---

# R

- Download R and RStudio
    - Follow [directions here]((https://courses.edx.org/courses/UTAustinX/UT.7.01x/3T2014/56c5437b88fa43cf828bff5371c6a924/)) if you need help (don't worry about the "SDSFoundations" stuff)
- Go over [`R_intro.R`](https://github.com/alexmill/techcamp_week1/blob/master/R_intro.R) file

# Python

- For absolute beginners, download and install [Thonny](http://thonny.org/)
- If you are interested in Jupyter Notebooks or plan on doing a lot of data analysis in Python, consider downloading [Anaconda](https://www.continuum.io/downloads). I recommend installing Python versions >= 3.5.
	- It handles the installation of almost all scientific computing Python packages (Numpy, Pandas, Scipy, Scikit-Learn, NLTK).
	- It makes it very easy to get up and running with Jupyter. 
	- It also includes a fully-featured Python IDE called Spyder (may be more comfortable for users coming from RStudio)



# Personal Exercises

For these exercises, choose the lanuage you would like more familiarity with. 

## Beginning Python and R

For beginners (of either language), I highly recommend working through a set of simple tasks that stretch your understanding of functions, inputs, lists, and iteration (i.e., for loops). Proceed through the following list of tasks:
- Write a function that prints "Hello, World!"
- Write a function that takes the user's name as input and greets them with by name.
- Write a function that takes an input n and prints the sum of the numbers 1 to n.
- Write a function that returns the largest element in a list.
- Write a function that returns the elements on odd positions in a list.
- Write a function that computes the list of the first 100 [Fibonacci numbers](https://en.wikipedia.org/wiki/Fibonacci_number) .


If you have more downtime and want to dedicate some time to learning your language of choice, [here is a longer list of good programming challenges](https://adriann.github.io/programming_problems.html).



## Intermeidate Python and R: General Scripting

- **For R**: Construct a new data.frame from the `ascii.txt` file, in which every row corresponds to a line in the file, and the columns represent the counts of the characters contained in each line.
- **For Python**: Construct a list of dictionaries containing the letter counts for each row (i.e., each row is entry in the list, which is a dictionary containing the counts of each letter on that line)
- For example, in the example below, the first row has 3 X's and 2 Y's, whereas the second row has 1 X, 3 Y's, and 1 Z

```
XYYXX    
XYZYY 
``` 

The resulting dataframe for this string is:

```
   X Y Z
1  3 2 0
2  1 3 1
```

And the results Python list would be:

```
[
	{"X": 3, "Y":2},
	{"X": 1, "Y":3, "Z": 1}
]
```

### Tips!

Use Google! Use StackOverflow!

**For R users**
- To read the rile into R as a string, use the `read_file` function from the `readr` package:
	
```R
install.packages("readr")
library(readr)

setwd("/path/to/week1/") # change working directory to the week1 folder
# NOTE for Windows users! Filepaths should use backslashes instead of forward:
setwd("C:\\path\\to\\week1")

ascii_txt = read_file("ascii.txt")
```

- The `stringr` package has a nice function called `str_count(string, pattern)`, which counts occurrences in a string. HOWEVER! By default it uses regex to match strings. Because there are special regex characters in the document we are scanning, instead use the function `stri_count_fixed` from the `stringi` package, which has the exact same format but does exact string matches rather than regex matches.

**For Python users**
- To read the file as a string into your program, use the following notation:
	
```python
import os

os.chdir("/home/path/to/week1") # change working directory to the week1 folder
# NOTE for Windows users! Filepaths should use backslashes instead of forward:
os.chdir("C:\\path\\to\\week1")

with open("ascii.txt") as file:
	ascii_txt = file.read()
```

- This consider using `split` and the `set` function, which returns only unique items in an iterable object (i.e,. a list or tuple). 

### Bonus points!

- Wrap your calculations in a function that can do the same for any text file. Then perform the same character counting calculation for the `intro.sh` file.



## Intermediate R: Munging Data

- Copy and paste the code below to construct two time-series dataframes, one consisting of data from the US and one from the UK

```R
if (!require("zoo")) install.packages("zoo")
US = USAccDeaths
US = data.frame(date = as.Date(as.yearmon(time(US))), US_Data = coredata(US))

UK = UKDriverDeaths
UK = data.frame(date = as.Date(as.yearmon(time(UK))), UK_Data = coredata(UK))

head(US)
head(UK)
```
- Your task is to construct a **single** dataframe, that has:
    - the `date` in one column
    - the `US_Data` in one column
    - the `UK_Data` in another column. 
- You can drop any dates in the UK dataset that are not contained in the US dataset.
- Additionally, for fun, make time-series plots of the data. I.e., plot the `US_Data` on the Y axis with `date` on the X axis.
    - Make a line plot using `plot(x=X_DATA, y=Y_DATA, type="line")`
- DOUBLE BONUS POINTS! Plot both US and UK data on the same plot.


