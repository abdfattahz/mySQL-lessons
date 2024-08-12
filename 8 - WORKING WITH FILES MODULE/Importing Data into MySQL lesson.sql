# Importing product_suggestions using Wizard

# Option 1
# Use import Wizard to import CSV
# will only allow to import CSV file
# but sometimes you will have json file. 95% of the time you'll use CSV 
# mySQL is very finicky with importing data. it can find any issue with any dataset
# be extra specific with how you import it!

# Option 2 
# Create Table in Database, then import CSV into Table 
# if we use this method, it'll be easier to make every single data imported correctly 
# we can set the name, the data type correctly first before importing the data
# if the data imported doesnt fit in the data types we already set before importing it, it'll be deleted


USE bakery;

CREATE TABLE product_suggestions2 (
product_suggestion_id INT,
product_suggestion_name TEXT,
date_received TEXT,
PRIMARY KEY (product_suggestion_id)
);
















