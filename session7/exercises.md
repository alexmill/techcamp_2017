# Exercises 7: Text Processing

Use the full movies dataset covered in the lecture.
  - [Jupyter notebook linked here](https://github.com/alexmill/techcamp_2017/blob/master/session7/session7_notebook.ipynb)
  - [Link to raw movie summary JSON](https://raw.githubusercontent.com/alexmill/techcamp_2017/master/session7/movies.json)
 
Some useful exercises are provided below:

- Write a function that finds all the movie summaries that contain the given word
  - e.g., `movies_with("happy")`
  - You may want to do this before stemming!
- Find the number of total words and unique words used in each of the movies. Which movie summary has the largest vocabulary?
- Pick a movie from the list (suggestions: "The Godfather" or "Lord of the Rings").
  - Find the top words (excluding stopwords!) in your chosen movie
  - Find the most similar movie (using cosine similarity) to your chosen movie (among the full set of 90 movies)

I encourage you to copy/paste/write your code in steps, and make sure you understand what is being accomplished at each step. 
