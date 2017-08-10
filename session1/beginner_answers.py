# Hello world
def hello():
    print("Hello world!")
    
# Write a function that takes the user's name as input and greets them with by name.
def greet(name):
    print("Hello {}! How are you?".format(name))

# Write a function that takes an input n and prints the sum of the numbers 1 to n.
def sum_to_n(n):
    output = 0
    for num in range(1,n+1):
        output = output + num
    print(output)

# One-liner:
sum(range(1,n+1))
    
# Write a function that prints the largest element in a list. (without using max function!)
def find_largest2(l):
    largest_val = l[0] # Take the first element in the list
    for el in l:
        if el > largest_val: # If we find a larger value, call it the new largest_val
            largest_val = el
    print(largest_val)

# One-liner:
max(l)

# Write a function that prints the elements in odd positions in a list.
def return_odd(l):
    i = 0 # keep track of list indices
    for el in l:
        if i % 2 == 0:
            print(el)
        i = i + 1 # increment the index by 1

# One-liner:
l[::2]

