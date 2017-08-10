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


**If you want to learn how to use GitHub yourself**
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

# Add the files for staging, and make a local commit
$ git add --all
$ git commit -m "my first commit"

# Push the files to GitHub!
$ git push origin master
```

Note you can also do all this directly on GitHub using the "Fork" button when viewing my repository's GitHub page.
