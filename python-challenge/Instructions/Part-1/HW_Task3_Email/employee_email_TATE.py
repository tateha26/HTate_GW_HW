import os
import csv

filepath = os.path.join('Resources', 'employees.csv')

new_employee_data = []

# Read data into dictionary and create a new email field
with open(filepath, 'r', newline='') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        first_name = row['first_name']
        last_name = row['last_name']
        email = f'{first_name}.{last_name}@example.com'
        new_employee_data.append(
                {'first_name': row['first_name'],
                 'last_name': row['last_name'],
                 'snn': row['ssn'],
                 'email': email
                 }
                )

# Grab the filename from the original pat
filename = os.path.join('Resources', 'output.csv')

# Write updated data to csv file
# YOUR CODE HERE
csvpath = os.path.join('output.csv')
with open(csvpath, 'w', newline='') as csvfile:
    fieldnames = ['last_name', 'first_name', 'ssn', 'email']
    
    