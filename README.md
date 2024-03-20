# Project 2: Crowdfunding ETL (Solo)

The instructions for this mini project are divided into the following subsections:
<ul>
<li>Create the Category and Subcategory DataFrames</li>
<li>Create the Campaign DataFrame</li>
<li>Create the Contacts DataFrame</li>
<li>Create the Crowdfunding Database</li>
</ul>

<h3>Create the Category and Subcategory DataFrames</h3>
<ol>
<li>Extract and transform the <i>crowdfunding.xlsx</i> Excel data to create a category DataFrame that has the following columns:</li>
    <ul>
    <li>A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories</li>
    <li>A "category" column that contains only the category titles</li>
    </ul>
<li>Export the category DataFrame as category.csv and save it to your GitHub repository.</li>

<li>Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:</li>
    <ul>
    <li>A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories</li>
    <li>A "subcategory" column that contains only the subcategory titles</li>
    </ul>
<li>Export the subcategory DataFrame as <i>subcategory.csv</i> and save it to your GitHub repository.</li>
</ol>

<h3>Create the Campaign DataFrame</h3>
<ol>
<li>Extract and transform the <i>crowdfunding.xlsx</i> Excel data to create a campaign DataFrame has the following columns:</li>
    <ul>
    <li>The "cf_id" column</li>
    <li>The "contact_id" column</li>
    <li>The "company_name" column</li>
    <li>The "blurb" column, renamed to "description"</li>
    <li>The "goal" column, converted to the float data type</li>
    <li>The "pledged" column, converted to the float data type</li>
    <li>The "outcome" column</li>
    <li>The "backers_count" column</li>
    <li>The "country" column</li>
    <li>The "currency" column</li>
    <li>The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format</li>
    <li>The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format</li>
    <li>The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame</li>
    <li>The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame</li>
    </ul>
<li>Export the campaign DataFrame as <i>campaign.csv</i> and save it to your GitHub repository.</li>
</ol>

<h3>Create the Contacts DataFrame</h3>

Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
    <ul>
    <li>Option 1: Use Python dictionary methods.</li>
    <li>Option 2: Use regular expressions.</li>
    </ul>
If you chose Option 1, complete the following steps:
    <ul>
    <li>Import the <i>contacts.xlsx</i> file into a DataFrame.</li>
    <li>Iterate through the DataFrame, converting each row to a dictionary.</li>
    <li>Iterate through each dictionary, doing the following:</li>
    <li>Extract the dictionary values from the keys by using a Python list comprehension.</li>
    <li>Add the values for each row to a new list.</li>
    <li>Create a new DataFrame that contains the extracted data.</li>
    <li>Split each "name" column value into a first and last name, and place each in a new column.</li>
    <li>Clean and export the DataFrame as <i>contacts.csv</i> and save it to your GitHub repository.</li>
    </ul>

If you chose Option 2, complete the following steps:
    <b>NOT CHOSEN</b>

<h3>Create the Crowdfunding Database</h3>
<ol>
<li>Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.</li>
<li>Use the information from the ERD to create a table schema for each CSV file.</li>
<li>Save the database schema as a Postgres file named <i>crowdfunding_db_schema.sql</i>, and save it to your GitHub repository.</li>
<li>Create a new Postgres database, named crowdfunding_db.</li>
<li>Using the database schema, create the tables in the correct order to handle the foreign keys.</li>
<li>Verify the table creation by running a SELECT statement for each table.</li>
<li>Import each CSV file into its corresponding SQL table.</li>
<li>Verify that each table has the correct data by running a SELECT statement for each.</li>
</ol>