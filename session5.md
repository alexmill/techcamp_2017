### Notebook from lecture: [Session 5 Notebook](https://github.com/alexmill/techcamp_week1/blob/master/session5_notebook.ipynb)

# Basic Scraping Exercise

Take the list of Canadian PGA winners at the Wiki link below and turn it into a list of tuples with the year, first name, and last name as entries in each tuple.
- [Link](https://en.wikipedia.org/wiki/Canadian_PGA_Championship)
- Example list of tuples:[(2014, “Alex”, “Miller”), (2013, “Bob”, “Ross”), … ]

I encourage you to do it in 100% Python for practice (but also try out the Google Sheets method).

Here is some boilerplate PyQuery code to get you started:

```python
import requests
from pyquery import PyQuery as PQ

# Insert the URL you want to scrape here
url = ""

# Initialize the PyQuery object 
r = requests.get(url)
raw_html = r.text
pq = PQ(raw_html)

# Select just the set of elements that you want to extract
# Use CSS selectors!


# Once you have the elements identfied, extract the text
texts = []
for el in elements:
  # extract text
  
  # Append to "texts" list
  

# Split the text into year, first name, and last name
data = []
for text in texts:
    # Split text into a tuple of the 3 data points
    
    
    # Append the tuple to the "data" list

```


### TIP!

Try to do the task without looking at this tip.

<details> 
  <summary>The CSS Selector for the table is...</summary>
```python
ul = pq("ul")[1]
list_items = PQ(ul)("li")
```
</details>
