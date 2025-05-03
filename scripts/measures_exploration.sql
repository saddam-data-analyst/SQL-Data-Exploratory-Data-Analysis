--For Measures:

--Find the total sales
SELECT SUM(sales_amount) AS total_sales FROM gold.fact_sales

--Find how many items are sold
SELECT SUM(quantity) AS total_quantity FROM gold.fact_sales

--Find average selling price
SELECT AVG(price) AS avg_price FROM gold.fact_sales

--Find the Total number of Orders
SELECT COUNT(order_number) AS total_orders FROM gold.fact_sales
--Different: To get unique value use the below code
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales

--Find the total number of products
SELECT COUNT(product_number) AS total_products FROM gold.dim_products
--Both are same for product
SELECT COUNT(DISTINCT product_number) AS total_products FROM gold.dim_products

--Find the total number of customers
SELECT COUNT(customer_number) AS total_customers FROM gold.dim_customers
--Both are same for customers also
SELECT COUNT(DISTINCT customer_key) AS total_customers FROM gold.dim_customers

--Find the total number of customers that has placed order
SELECT COUNT(DISTINCT customer_key) FROM gold.fact_sales

--Generate a report that shows all key metrics of the business:

SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total No. Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total No. Products', COUNT(product_number) FROM gold.dim_products
UNION ALL
SELECT 'Total No. Customers', COUNT(customer_number) FROM gold.dim_customers
UNION ALL
SELECT 'Customer_WithOrders', COUNT(DISTINCT customer_key) FROM gold.fact_sales

