# Session 4 Exercises

### Basic GET Request to Generic Webpage

Here's a simple example of how to make a GET request using Python 3's `requests` module.

```python
import requests

url = "http://www.wikipedia.com/en/"
r = requests.get(url)

print(r.status_code)
raw_text = r.text

# Count the number of characters in your response
len(raw_text)

# Don't print it all out at once!
### DO NOT DO: print(raw_text) ###

# Instead, print out just a substring:
print(raw_text[0:200])

# Save the results of your request
with open("my_first_request.html", "w+") as f:
  f.write(raw_text)

# Now open the file in a plain-text editor (e.g., Notepad, Sublime)
# to see the full raw HTML

```

Experiment with the code above by changing the URL and printing out different parts of the string you get back. For example, try printing something from the middle of the document (e.g., `print(raw_text[2000:2200])`) and see if you can find it on the URL's page in your browser.

### Working with an API in Python

```python
import requests # if you haven't imported it already
from urllib.parse import urlencode

base_url = "https://en.wikipedia.org/w/api.php?"
data= {
    "format": "json",
    "action": "query",
    "prop": "extracts",
    "exintro": "",
    "explaintext": "",
    "redirects": 1,
    "titles": "Barack Obama"
}


# urlencode converts a Python dict into a URL query string
params = urlencode(data)
print(params)

full_url = base_url + params
r = requests.get(full_url)

# If your response is returned in JSON format, you can get the JSON data
# as a dictionary in Python by just using the .json method on your request object

# Determine the type of data you recieved:
print(r.headers["Content-Type"])

# Extract the JSON results
results = r.json()

# Manipulate the JSON data as a regular Python dictionary.
# Print keys available to you:
results.keys()

# Print the raw dictionary
print(results)

# When working with nested data, it can be useful to use the "pretty print"
# function in Python:
from pprint import pprint
pprint(results)

# Get the plain-text summary:
summary = list(results["query"]["pages"].values())[0]["extract"]
print(summary)

# Save the raw data using the json module
import json
with open("my_first_json.json", "w+") as f:
  json.dump(results, f)

# Again, open the file "my_first_json.json" in a plain-text editor
# to see your results.
```

Experiment with this example by changing the values inside your `payload` variable and examining the results you get back.


### Built-in Python API for Wikipedia

Make sure you install the `wikipedia` package using pip. Open up a command line (or go through the GUI in Thonny) and install ____ using pip:

```bash
$ pip install wikipedia
```

Now open a Python console and ensure that the package installed correctly by importing it:
```python
import wikipedia

# Test out some basic commands
wikipedia.search("Barack")

wikipedia.summary("GitHub")

ny = wikipedia.page("New York")
ny.title
dir(ny)

# Get a random page
wikipedia.random()

```
### Exercise

Write a function that takes in a query for a Wikipedia article and returns the closest article title and summary.

<!--Solution
```python
def get_summary(query):
    articles = wikipedia.search(query)
    if not articles:
        return("No articles match that query.")
    page = wikipedia.page(articles[0])
    return((page.title, page.summary))
 ```
 -->
