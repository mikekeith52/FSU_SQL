# FSU_SQL

Welcome FSU students! If you are reading this, it should mean you are currently navigated to: https://github.com/mikekeith52/a_simple_project

If you are somehow reading this and you have not navigated to that web page, do so now.

## Download all files from GitHub
1. On the top-right of the screen, click the option "⭐ Star". Nothing else works if this step is not completed.
2. Click the green code button on the top-right
3. Download all files as a zip
4. Unzip and save files locally to your computer where you'll be able to easily access them

## Getting Started
Steps to begin learning SQL with Databricks:

1. Navigate to https://community.cloud.databricks.com
2. Sign up for a free community account
    - Select the option to sign up a new account
    - Fill out the form
      - For Company, use "Florida State University"
      - For Title, use "Student"
    - In the next screen select "Get Started with Community Edition"
    - Once you confirm your email, you should be able to log into the Databricks platform
3. Create a compute cluster
    - On your account dashboard, click the "Compute" icon on the left
    - Select "Create compute" on the top-right
    - Use "FSU Cluster" for the compute name
    - Any option for Databricks Runtime Option will work (safest is to use the default one offered to you)
    - Create Compute
4. Upload cogsley_clients.csv and cogsley_sales.csv to the default database
    - Select the main databricks logo on the top-left
    - Select "Create table"
    - Upload cogsley_sales.csv
    - Create table with UI
    - Attach the FSU Cluster
    - Preview table
    - Change name to cogsley_sales
    - Column delimeter is comma (,)
    - Check thse boxes:
      - First row is header
      - Multi-line
    - Scroll through the preview data and change all date columns to type "Timestamp" (OrderDate, OrderMonthYear, ProjectCompleteDate)
    - Create table
    - Upload cogsley_clients.csv and repeate the steps for the last dataset. This time, call the table cogsley_clients. You can also check the "Infer schema" box as there are no columns to change to Timestamp
5. Upload SQL-Practice-FSU.dbc as a notebook
    - Select the main databricks logo on the top-left
    - Create a new notebook
    - Select file--> import
    - Select the QL-Practice-FSU.dbc
    - On the file icon on the left, select the notebook
6. We will go through each coding block together to thoroughly cover what each is accomplishing

## Questions?
Feel free to contact me
- mikekeith52@gmail.com
- [LinkedIn](https://www.linkedin.com/in/michaelwkeith/)
- [GitHub](https://github.com/mikekeith52)
