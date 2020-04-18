-- Databricks notebook source
--***********  SELECT  ***********--
-- 1. View the first n rows of a table
select * from cogsley_sales limit 100;

-- COMMAND ----------

-- 2. SELECT a subset of table features
SELECT CompanyName, Industry, State
FROM cogsley_sales;

-- COMMAND ----------

-- 3. SELECT unique combinations of companies and industries
SELECT DISTINCT Industry, CompanyName
FROM cogsley_sales;

-- COMMAND ----------

-- 4. How many rows are in this dataset? What is it aggregated by?
SELECT COUNT(*) -- total number of rows
  ,COUNT(DISTINCT OrderID) -- if this number is the same as total row number, then each line is an order
FROM cogsley_sales

-- COMMAND ----------

-- 5. How else do we want to explore this table?

-- COMMAND ----------

--***********  LEFT JOIN  ***********--
-- 1. What, if anything, do we care about in table b that we want to examine with the information in table a?
-- 2. Do the two tables have any columns in common?
SELECT * from cogsley_clients LIMIT 100;
--SELECT COUNT(*) FROM cogsley_clients;

-- COMMAND ----------

--***********  CASE STATEMENT  ***********--
-- 1. create a custom variable based on when a client company was established
SELECT DISTINCT Name
  ,CASE WHEN IPOyear < 1970 THEN 'Pre-1970'
    WHEN IPOyear BETWEEN 1970 AND 1979 THEN '1970s'
    WHEN IPOyear BETWEEN 1980 AND 1989 THEN '1980s'
    WHEN IPOyear BETWEEN 1990 AND 1999 THEN '1990s'
    WHEN IPOyear BETWEEN 2000 AND 2009 THEN '2000s'
    WHEN IPOyear >= 2010 THEN '2010s'
    ELSE 'Unknown' -- NULL CASE
    END AS est_public_company_year_category -- All case statements end with `END` and should normally be aliased with `AS`
  ,industry
FROM cogsley_clients
LIMIT 1000;

-- COMMAND ----------

--***********  GROUP BY  ***********--
-- 1. When aggregating by a feature in the dataset, GROUP BY is always needed!
--    View the number of sales by client
SELECT CompanyName
  ,SUM(Quantity) AS ttl_sales_units        -- Aggregate function
  ,COUNT(DISTINCT OrderID) AS ttl_orders   -- Aggregate function
  ,SUM(SaleAmount) AS ttl_revenue          -- Aggregate function
FROM cogsley_sales
GROUP BY CompanyName -- All columns selected in SELECT that are not aggregate functions belong in the GROUP BY clause
ORDER BY ttl_sales_units DESC -- See which clients do the most in sales
LIMIT 25;

-- COMMAND ----------

-- 2. Top 5 amount of sales by industry and state in terms of sales units?

-- COMMAND ----------

--***********  INNER JOIN  ***********--
-- 1. This is good for filtering the values of 1 dataset based on the values in another
SELECT DISTINCT sls.CompanyName
  ,clnt.MarketCapAmount
FROM Cogsley_Sales sls

INNER JOIN Cogsley_Clients clnt
  ON sls.CompanyName = clnt.Name
  
WHERE CAST(clnt.MarketCapAmount AS float) >= 1000000000 -- who are our biggest clients?
                                                        -- this cast function makes it work - try running without it
                                                        -- a float is a number with a decimal
ORDER BY clnt.MarketCapAmount DESC

-- COMMAND ----------

-- 2. Any other uses for INNER JOIN?

-- COMMAND ----------

-- Anything else we should cover?
