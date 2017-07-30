**Tech Camp Week 1 Exercises**

# Command Line

Good resource with basic intro to bash shell: [Intro to Bash](https://programminghistorian.org/lessons/intro-to-bash)

### Windows Users: Install a bash shell
- Follow instructions at [Git Bash](https://git-for-windows.github.io/)
- Open "Git Bash"

### Mac Users: Open Terminal
- Cmd+Space, "Terminal", Enter
- Make sure `git` is installed

### Make a new directory

- I recommend creating a "TechCamp" directory somewhere on your system (in your home folder, desktop, doesn't really matter).
- With your shell open, make sure you are navigated to the `TechCamp` folder

```bash
$ cd /e/TechCamp/
```

- Now create a directory called `testdir` and navigate into the new directory:

```bash
$ mkdir testdir
$ ls ./
$ cd testdir
```

- Create a file inside this new directory:

```bash
$ ls ~/ > myfile.txt
```

- Try to delete the directory you just made:

```bash
$ cd ../
$ pwd
$ rmdir testdir
```

- Notice the error. You must remove the file first before you can delete the directory, or you can override the error
    - BE CAREFUL WHENEVER YOU ARE USING THE `rm` FUNCTION!
    - NEVER EVER TYPE `rm -rf /` with an unqualified directory path. This will nuke your whole system.
    
```bash
$ rm -rf testdir/
$ ls ./
```

---

# Git Intro

- Register for a [GitHub](https://github.com/) account
- If you have absolutely no idea what you're doing, consider following a more [in-depth introduction post](http://product.hubspot.com/blog/git-and-github-tutorial-for-beginners).
- In your `TechCamp` folder, clone my repository. This will create an exact copy of the files I have on GitHub on your local machine:


```bash
$ git clone https://github.com/alexmill/techcamp_week1
```

Navigate into the newly-created folder, and run the following command (replacing `YourName` with your name, e.g. `Alex`):

```bash
$ bash intro.sh YourName
```
Note that files that end in `.sh` are called "shell scripts", and they are simply comprised of commands that can be run in the bash shell. Try and figure out how I wrote the `intro.sh` script; I will explain if you are curious!

**If you want to try Git with RStudio**
- Look into this tutorial: [http://r-bio.github.io/intro-git-rstudio/](http://r-bio.github.io/intro-git-rstudio/)
- There aren't a ton of benefits over using the CLI, but if you prefer a GUI, it can be helpful


**If you want to use how to use GitHub yourself**
- Create a new repository using the GitHub website
    - Take note of the URL of your repository; something like: `https://github.com/user_name/repo_name`
- [Change the "origin" of the repository](https://help.github.com/articles/changing-a-remote-s-url/) you downloaded from my account:

```bash
# list current remote repositories (it should have the link to my GitHub repo)
$ git remote -v

# change the remote origin to your own 
$ git remote set-url origin https://github.com/user_name/repo_name.git

# verify that your local repo now has your GitHub location as its remote destination
$ git remote -v
```

---

# R

- Download R and RStudio
    - Follow directions here if you need help: https://courses.edx.org/courses/UTAustinX/UT.7.01x/3T2014/56c5437b88fa43cf828bff5371c6a924/ (don't worry about the "SDSFoundations" stuff)
- Go over `R_intro.R` file

## Personal Exercises

**For beginners**:
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

**For more advanced users**:
- Construct a new data.frame from the `ascii.txt` file, in which every row corresponds to a line in the file, and the columns represent the counts of the characters contained in each line.
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
- Tips!
    - Use Google! Use StackOverflow!
    - The `stringr` package has a nice function called `str_count(string, pattern)`, which counts occurrences in a string. HOWEVER! By default it uses regex to match strings. Because there are special regex characters in the document we are scanning, instead use the function `stri_count_fixed` from the `stringi` package, which has the exact same format but does exact string matches rather than regex matches.

- Bonus points!
    - Wrap your calculations in a function that can do the same for any text file. Then perform the same character counting calculation for the `intro.sh` file.


