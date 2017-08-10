# Session 6 Exercise

### 1. Scrape a product page

Write a function to scrape a single product's URL at Bricket. Your function should extract all the fields in the "Set Details" box. Try to use regular expressions to format and normalize the fields in your data. For example, the numeric fields should be converted to `int` or `float` variables in Python. You can use 

Here's an example page you can scrape: https://brickset.com/sets/30496-1/U-Wing-Fighter


### 2. Scrape a bunch of product pages!

If you're comfortable with the previous task, write a new function that scrapes a category page on Brickset, fetches all the product links, and extracts all the information from each of the sub-pages (i.e., using the function you wrote in part 1). Here is a sample category page: https://brickset.com/sets/theme-Star-Wars/year-2017

There are two ways to extract the links on the page:

1. Using an HTML parser like PyQuery
2. Using regular expressions

Choose whichever one you would like more practice with!


# Python Boilerplate

```python
# Task 0: Write a function that takes in a string and returns only 
# the numbers (and period, if present) inside that string
def get_number(string):
	# Use regex!
	number = ...

	return(number)


# Task 1: Scrape a product single page
# Example URL: https://brickset.com/sets/30496-1/U-Wing-Fighter
def scrape_product_page(url):
	# Fetch the URL; try spoofing your User Agent


	# Create a PyQuery object


	# Query the PyQuery object to isolate the "Set Details" box


	# Iterate through the fields within the set details box to construct a data variable
	data = { } # I suggest using a dict


	return(data)


# Task 2: Scrape the links from a category page
# Example URL: https://brickset.com/sets/theme-Star-Wars/year-2017
def get_product_links(url):
	# Fetch the URL

	# Use either PyQuery or regex to extract the list of 
	# product page links

	return(links)

# Final Task (for fun):
# Use the functions you've constructed to scrape all the product pages
# at the link https://brickset.com/sets/theme-Star-Wars/year-2017
# Make sure you pause for a second or two while iterating over the links

```
