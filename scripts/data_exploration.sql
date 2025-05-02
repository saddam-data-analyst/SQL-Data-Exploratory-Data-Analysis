## Exploratory Data Analysis (EDA)

--Explore all objects in the Database
SELECT * FROM INFORMATION_SCHEMA.TABLES

--Explore all columns in the Database
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'fact_sales'

==================================================

--Explore All countries our customers come from.
SELECT DISTINCT
country
FROM gold.dim_customers

--Explore all Categories 'The major Divisions'
SELECT DISTINCT category FROM gold.dim_products

SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products
ORDER BY 1, 2, 3

SELECT * FROM gold.fact_sales

