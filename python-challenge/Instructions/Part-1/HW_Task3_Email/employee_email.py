# -*- coding: UTF-8 -*-
"""Employee Email Script.

This module allows us to create an email address using employee data from
a csv file.

Example:
    $ python employee_email.py

"""
h
_, filename = os.path.split(filepath)import os
import csv

filepath = os.path.join("Resources", "employees.csv")

new_employee_data = []

# Read data into dictionary and create a new email field
with open(filepath, newline='') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        print((row['first_name'], row['last_name']) + (row['@example.com']))

name_dict = {
        #"first_name":["A2":"A13"], 
        #"last_name":["Fleming":"Hammond"], 
        "ssn":["619-16-7988": "561-17-6312"]
    }

# Grab the filename from the original pat

# Write updated data to csv file
csvpath = os.path.join("output", filename)
with open(csvpath, "w") as csvfile:
    # YOUR CODE HERE
    
 #   
>>> import csv
>>> with open('names.csv', newline='') as csvfile:
...     reader = csv.DictReader(csvfile)
...     for row in reader:
...         print(row['first_name'], row['last_name'])
...
Eric Idle
John Cleese

>>> print(row)
OrderedDict([('first_name', 'John'), ('last_name', 'Cleese')])
