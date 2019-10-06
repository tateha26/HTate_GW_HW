import os
import csv

udemy_csv = os.path.join("web_starter.csv")

title = []
price = []
subscribers = []
reviews = []
review_percent = []
length = []

with open(udemy_csv, newline="", encoding = 'utf-8') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    
    # loop through
    for row in csvreader:
        #ADDING TITLE
        title.append(row[1])
        #ADDING PRICE
        price.append(row[4])
        subscribers.append(row[5])
        reviews.append(row[6])
        length.append(row[9])

#Determine percent of review left 2 decimals.
percent = round(int(row[6]) / int(row[5]), 2)
review_percent.append(percent)

#Zip lists together
zipped_data = zip(title, price, subscribers, reviews, review_percent, length) 

cleaned_csv_copy = zipped_data
for i in cleaned_csv_copy:
    print(i)
    
output_file = os.path.join("web_final.csv")

with open(output_file, "w", newline='') as datafile:
        writer = csv.writer(datafile)
        
        writer.writerow(["Title","Price","Subscribers","Reviews", "Percent of Reviews", "Length"])
        writer.writerows(zipped_data)