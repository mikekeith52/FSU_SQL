# FSU_SQL
Here is the repository of my SQL demo given every year for the Florida State Masters of Applied Economics program.
 
## Overview
I am asked annually to teach a single introduction to sQL lecture to the new cohort at Florida State. The students have backgrounds typically in STATA, SAS, and R; Logistic Modeling; and economic interpretations of societal trends. Building upon that knowledge, this lecture hopes to offer a view to the students to understand how big data and relational databases can be used to expand their skillsets. 

## Getting Started
Steps to initiate the learning demo on Databricks:

1. Navigate to https://community.cloud.databricks.com
2. Sign up for a free community account (if you are entering credit card info for a free trial, you're doing it wrong)
3. Create a cluster
  - On your account dashboard, click the clusters icon on the left
  - Create Cluster 
  - Name the cluster whatever you want
  - Databricks Runtime Version: Runtime 6.2 (this actually doesn't really matter -- just don't select any beta versions)
  - Create Cluster
4. Upload cogsley_clients.csv and cogsley_sales.csv
  - Save both files locally
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
  - Make sure the data looks right
  - Make sure the column data types look correct (or ignore this if you don't know what you are looking for)
  - Create table

## Presentation
The deck used to introduce SQL is included in the repository and can be downloaded.

## SQL
The SQL text file used in the practice demonstration is available as SQL-Practice-FSU.sql
