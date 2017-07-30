# get a clean environment to start with
# same as "brush" icon in RStudio
rm(list = ls(all.names = TRUE))

# You can view the documentation for any command with ?
?lm

# Working directory
getwd()
dir()
?setwd


# R is a funny language when it comes to types,
# but you will save yourself much frustration by
# taking some time to understand them

# Basic variable types
a = 3.2 # double/float (important to know infinite digits are not stored)
b = "abc" # character
c = TRUE # logical/boolean

# Importantly:
!FALSE
!TRUE

# Null types:
NaN # "not a number", returned for invalid calculations: 0/0
NA # Missing value place-holder
NULL # Empty/non-existent object

# Notice difference between:
c(1,2,3)
c(1,NA,3)
c(1,NULL,3)


# Numeric types: NaN, double, integer, Inf
# Check variable types with is.*
is.numeric(4)
is.numeric(Inf)

# Coerce variable types with as.*
is.integer(4)
is.integer(as.integer(4))

# In RStudio, type "is." or "as." and view completions for full list of options
# Weird things to be aware of:
typeof("1")
typeof(1)
# and yet:
"1"==1
as.character("1") ==  as.integer(1)

# R is coercing variables being compared to the same type before comparison
# ... all without telling you!


### COMPOUND VARIABLES ###

# Vectors
v = c(1,2,3)

# Vector constructions:
1:10
20:10
seq(1,20,2)
rep(1, 10)

# c "combine" function flattens vectors:
c(c(1,2,3), c(4,5,6))

# Lists: Compound object that can contain variables of different type
# Note how c() coerces things to the same type:
c(1,2, "abc")
list(1,2,"abc")


### MATRICES ###
# column bind and row bind turns vectors into matrices
rbind(c(1,2,3), c(4,5,6))
cbind(c(1,2,3), c(4,5,6))

# Matrix
matrix(c(1,2,3,4,5,6), nrow=3)
matrix(c(1,2,3,4,5,6), nrow=3, byrow=FALSE)

# DataFrames: Like matrices, except allow for COLUMNS of different type
df = data.frame(col1=c(1,2,3), col2=c("a","b","c"))

# Note by default, non-numeric columns become "factors"
# Factors are categorical variables; they are also very tricky to work with!
factor(c(1,2,3))

# Always double check that your numeric variable are numeric type!!!
df = data.frame(col1=c(1,2,3), col2=c(3,"",5))
str(df)


# Indexing
# R indexing starts at 1!
y = 1:20
y[1]
y[c(1,3,8)]

# Negative indexing (i.e., select all EXCEPT)
y[-1]
unselect = c(1,5,6)
y[-unselect]

# Logical indexing
z[c(TRUE, TRUE, FALSE)]



# Vector logic
v = 1:20
v > 10

# Combine vector conditions with logical indexing:
X = 1:100
X[X > 40]


# Multiple conditions with logical operators: & "and", | "or"
X = 1:100
X[(X %% 3 == 0) & (X %% 5 == 0)]
X[(X %% 3 == 0) | (X %% 5 == 0)]


# Vector assignments (FizzBuzz in R)
X = 1:100
FB = X
FB[(X %% 3 == 0) | (X %% 5 == 0)] = ""
FB[(X %% 3 == 0)] = "fizz"
FB[(X %% 5 == 0)] = paste(FB[(X %% 5 == 0)], "buzz", sep="")
FB

# Loops
for(el in FB){
    print(el)
}

# Functions
fizzbuzz = function(u, v){
    X = 1:100
    FB = X
    FB[(X %% u == 0) | (X %% v == 0)] = ""
    FB[(X %% u == 0)] = "fizz"
    FB[(X %% v == 0)] = paste(FB[(X %% v == 0)], "buzz", sep="")
    for(el in FB){
        print(el)
    }
}
fizzbuzz(3,5)
fizzbuzz(4,18)



### WORKING WITH DATASETS ###
# R has a lot of toy datasets:
data()

str(mtcars)
head(mtcars)
colnames(mtcars)
rownames(mtcars)

mtcars


# Indexing and selecting data in matrices/data.frames
mtcars[1,]
mtcars[, 1]
mtcars[1:3, 5:7]
mtcars[, "mpg"]
mtcars[, c("mpg", "cyl")]

# data.frames have the dollar option for selecting columns
mtcars$cyl

# Advanced indexing
mtcars[(mtcars[,"cyl"] > 4), c("mpg", "cyl")]
mtcars[(mtcars$cyl > 4), c("mpg", "cyl")]

# ^^^ This stuff can be made easier with "dplyr". More on that later.

### Working with data
# Read in local files
dir()
# Can also use RStudio File menu
setwd("E:\\TechCampFolders\\week1\\")
tips = read.csv('tips.csv')


# Read in remote files
tips = read.csv('http://dicook.public.iastate.edu/Army/tips.csv')

# Read in files of other types:
library(foreign)
read.dta("stata_tips.csv")


# ATTACHING DATA #

# Attaching dataframes allows you to call the column variables without
# reference to the parent dataframe. Can be useful if you are performing
# lots of calculations and don't want to type tips$size a bunch of times
colnames(tips)
attach(tips)
smoker
mean(size)

# But this is highly discouraged! Rather, just use "with"
# Allows you to attach, but only in a closed environment
detach(tips)
mean(size)
with(tips, mean(size))



# Summarizing and Visualizing data in Base R
summary(tips)
table(tips$sex)

# Count and average types by gender
cbind( # column-bind
    counts=table(tips$sex),
    avg_tip=round(
        c(
            mean(tips[tips$sex=="F","tip"]),
            mean(tips[tips$sex=="M","tip"])
        ),
        2
    )
)


### PLOTS ###

# try plot blindly
plot(tips)

# R is detecting data and guessing what plot you want to see;
# in this case: 
pairs(tips)


# Task: Plot tips by bill amount, color-coded by gender
plot(
    tips[tips$sex=="F",c("bill", "tip")], # x,y data
    col="red", pch=16, # color and shape
    main="Relationship between Bill & Tip by Gender" # main title
)
points(tips[tips$sex=="M",c("bill", "tip")], col="blue", pch=16) #layer points on top of existing plot

# Oops! Initializing the plot with the female values cuts off
# the male values
plot(
    tips[tips$sex=="F",c("bill", "tip")],
    col="red", pch=16,
    main="Relationship between Bill & Tip by Gender",
    xlim=c(min(tips$bill), max(tips$bill)), # xlimits
    ylim=c(min(tips$tip), max(tips$tip)) # ylimits
)
points(tips[tips$sex=="M",c("bill", "tip")], col="blue", pch=16)



### The Tidy-way ###
# http://tidyverse.org/
library(dplyr)
library(ggplot2)

# %>% is a "pipe" operator
# Prevents ugly nesting structure required when combining many R functions
tips %>% group_by(sex) %>% summarize(counts=n(), avg_tip=round(mean(tip), 2))

# Extra tidy! (probably overkill)
tips %>% group_by(sex) %>% summarize(counts=n(), avg_tip=(tip %>% mean() %>% round(2)))

# ggplot2
ggplot(data=tips) + geom_point(aes(bill, tip, group=sex, color=sex)) + ggtitle("Relationship between Bill & Tip by Gender")

# Decent quick tutorials on ggplot2:
# https://www.youtube.com/watch?v=OYxJsUgSLFs
# http://sape.inf.usi.ch/quick-reference/ggplot2


