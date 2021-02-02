# FSU_SQL

## Download all files from GitHub
1. Click the green code button on the top-right
2. Download all files as a zip
3. Unzip and save files locally to your computer where you'll be able to easily access them

## Getting Started
Steps to begin learning SQL with Databricks:

1. Navigate to https://community.cloud.databricks.com
2. Sign up for a free community account (if you are entering credit card info for a free trial, you're doing it wrong)
3. Create a cluster
    - On your account dashboard, click the clusters icon on the left
    - Create Cluster 
    - Name the cluster whatever you want
    - Databricks Runtime Version: Runtime 7.5 (this actually doesn't really matter -- just don't select any beta versions)
    - Create Cluster
4. Upload cogsley_clients.csv and cogsley_sales.csv to the default database
    - Download and save both files locally
    - On your account dashboard, click the data icon on the left
    - Select "Add Data"
    - Select the csv files you saved locally (cogsley_clients.csv and cogsley_sales.csv) using "browse"
    - Create table with UI
    - Select the cluster you created
    - Preview table
    - Table name is cogsley_clients and cogsley_sales (no .csv or _csv at the end)
    - Create in Default database
    - File type is CSV
    - Column delimiter is ","
    - First row is header
    - Infer schema
    - Make sure the data looks right
    - Make sure the column data types look correct (or ignore this if you don't know what you are looking for)
    - Create table
5. Upload SQL-Practice-FSU.dbc as a notebook
    - Navigate to the Workspace icon on the left
    - Import the file
6. We will go through each coding block together to thoroughly cover what each is accomplishing

## Contact
Michael Keith: <a href="mailto:mikekeith52@gmail.com">email</a>