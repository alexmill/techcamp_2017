# Session 4 Exercises

### Basic GET Request in Python

Here's a simple example of how to make a GET request using Python 3's `requests` module.

```python
import reqeusts

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

### Basic POST Request in Python

```python
import requests # if you haven't imported it already

url = ""
headers = {

}
payload = {

}

r = requests.post(url, payload=payload, headers=headers)

# If your response is returned in JSON format, you can get the JSON data
# as a dictionary in Python by just using the .json method on your request object

# Determine the type of data you recieved:
print(r.headers[])

# Extract the JSON results
results = r.json

# Access the JSON data as a regular Python dictionary:
results[""]


# Save your data using the json module

import json
with open("my_first_json.json") as f:
  json.dump(f, results)

# Again, open the file "my_first_json.json" in a plain-text editor
# to see your results.

```

Experiment with this example by changing the values inside your `payload` variable and examining the results you get back.


### Built-in Python API for _____ Wikipedia?

Make sure you install the ____ package. Open up a command line (or go through the GUI in Thonny) and install ____ using pip:

```bash
$ pip install ____
```

Now open a Python console and ensure that the package installed correctly by importing it:

```python
import ____



```


