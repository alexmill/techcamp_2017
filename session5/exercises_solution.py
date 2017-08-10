import requests
from pyquery import PyQuery as PQ

# Insert the URL you want to scrape here
url = "https://en.wikipedia.org/wiki/Canadian_PGA_Championship"

# Initialize the PyQuery object 
r = requests.get(url)
raw_html = r.text
pq = PQ(raw_html)

# Select just the set of elements that you want to extract
# Use CSS selectors!
ul = pq("ul")[1]
elements = PQ(ul).children()

# Once you have the elements identfied, extract the text
texts = []
for el in elements:
    # extract text
    text = PQ(el).text()
  
    # Append to "texts" list
    texts.append(text)

# Split the text into year, first name, and last name
data = []
for text in texts:
    # Split text into a tuple of the 3 data points
    split_vars = text.split()
    year = int(split_vars[0][:4])
    name = " ".join(split_vars[1:])
    tup = (year, name)
    
    # Append the tuple to the "data" list
    data.append(tup)
    
print(data)
