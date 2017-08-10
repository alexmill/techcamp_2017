# Very basics
w = 1.1 # float
x = 1 # int
y = "a" # str
z = True  #bool; opposite is False

# Experiment with basic operations
1+1
"a"+"b"
1+"b"

True + False
True * False
True or False
True and False
not True
not False

# Coercing variables into different types
int("3")
int(3.3)
str(3)
bool(3)
bool(0)
bool("")


#lists
l = [1,2,3]
l[0]
l[1] = "x" # list elements can be changed in-place; i.e. are "mutable"
l


#tuples
t = (44,33)
t[0]
t[0] = 55 # error! tuples are not mutable!

# coerce compound data types:
list((1,2,3)) # same as [1,2,3]
tuple([1,2,3]) # same as (1,2,3)


#dicts
my_dict = {"key1": "value", "key2": "different value"}
my_dict["key1"]

# Simple function
def my_func(input):
    if input > 4:
        print("Your input is greater than 4!")
    else:
        print("You entered {}, which is not greater than 4.".format(input))
    return(input)

for el in range(0,100):
    x = el + 10
    print(x)

# Useful expressions
range(0,10) # iterate through a sequence of integers
type(x) # Get variable type
dir(y)# Determine methods that can be applied to variable)
my_dict.items() # iterate through all (key,value) pairs in dictionary 
"Hello world my name is Alex".split() # Split a string into a list
"Hello world my name is Alex".split("e") # split at sepcific characters

# String formatting with variables; see https://pyformat.info/
# Rather than:
X = 55 * 2
Y = 43 *22
"X value: " + str(X) + ". Y value: " + str(Y) + "."

# Do this:
"X value: {x}. Y value: {y}.".format(X,Y)
