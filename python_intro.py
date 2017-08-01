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
not True
not False
True or False
True and False



int("3")
int(3.3)
str(3)
bool(3)
bool(0)
bool("")


#lists
[1,2,3]

#tuples
(44,33)

#dicts
my_dict = {"key1": "value", "key2": "different value"}
my_dict["key1"]

# Simple function
def my_func(input):
    if input > 4:
        print("Your input is greater than 4!")
    else:
        print("You entered {}, which is not greater than 4.".format(input))
    return(input+3)

# Useful expressions

range(0,10) # iterature through a sequence of integers
type(x) # Get variable type
dir(y)# Determine methods that can be applied to variable)
my_dict.items() # iterate through all (key,value) pairs in dictionary 
"Hello world my name is Alex".split() # Split a string into a list
"Hello world my name is Alex".split("e") # split at sepcific characters

# String formatting with variables; see https://pyformat.info/
# Rather than:
X = 55
Y = 43
"X value: " + str(X) + ". Y value: " + str(Y) + "."

# Do this:
"X value: {0}. Y value: {1}.".format(X,Y)



