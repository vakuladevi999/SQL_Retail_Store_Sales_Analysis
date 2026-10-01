
-- Key Business Metrics Overview

-- Total Transactions
SELECT 'Total Transactions' AS Metric,
       COUNT(*) AS Value
FROM retail_store_sales

UNION ALL

-- Total Customers
SELECT 'Total Customers',
       COUNT(DISTINCT Customer_ID)
FROM retail_store_sales

UNION ALL

-- Total Categories
SELECT 'Total Categories',
       COUNT(DISTINCT Category)
FROM retail_store_sales

UNION ALL

-- Total Items
SELECT 'Total Items',
       COUNT(DISTINCT Item)
FROM retail_store_sales

UNION ALL

-- Average Price Per Unit
SELECT 'Average Price Per Unit',
       ROUND(AVG(Price_Per_Unit), 2)
FROM retail_store_sales

UNION ALL

-- Total Quantity Sold
SELECT 'Total Quantity Sold',
       SUM(Quantity)
FROM retail_store_sales

UNION ALL

-- Average Quantity Per Transaction
SELECT 'Average Quantity Per Transaction',
       ROUND(AVG(Quantity), 2)
FROM retail_store_sales

UNION ALL

-- Total Sales
SELECT 'Total Sales',
       SUM(Total_Spent)
FROM retail_store_sales

UNION ALL

-- Average Transaction Value
SELECT 'Average Transaction Value',
       ROUND(AVG(Total_Spent), 2)
FROM retail_store_sales

UNION ALL

-- Number of Payment Methods
SELECT 'Payment Methods',
       COUNT(DISTINCT Payment_Method)
FROM retail_store_sales

UNION ALL

-- Number of Locations
SELECT 'Locations',
       COUNT(DISTINCT Location)
FROM retail_store_sales;

-- Sales Performance Analysis
-- Sales by Category
SELECT
    Category,
    SUM(Total_Spent) AS Total_Sales
FROM retail_store_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Sales by Item

SELECT
    Item,
    SUM(Total_Spent) AS Total_Sales
FROM retail_store_sales
GROUP BY Item
ORDER BY Total_Sales DESC;

-- Sales by Location

SELECT
    Location,
    SUM(Total_Spent) AS Total_Sales
FROM retail_store_sales
GROUP BY Location
ORDER BY Total_Sales DESC;

-- Sales by Payment Method

SELECT
    Payment_Method,
    SUM(Total_Spent) AS Total_Sales
FROM retail_store_sales
GROUP BY Payment_Method
ORDER BY Total_Sales DESC;

-- Monthly Sales

SELECT
    YEAR(Transaction_Date) AS Year,
    MONTH(Transaction_Date) AS Month,
    SUM(Total_Spent) AS Total_Sales
FROM retail_store_sales
GROUP BY
    YEAR(Transaction_Date),
    MONTH(Transaction_Date)
ORDER BY Year, Month;

-- Customer Analysis
-- Customers by category

SELECT
    Category,
    COUNT(DISTINCT Customer_ID) AS Customers
FROM retail_store_sales
GROUP BY Category
ORDER BY Customers DESC;

-- Top customers

SELECT
    Customer_ID,
    SUM(Total_Spent) AS Total_Spent
FROM retail_store_sales
GROUP BY Customer_ID
ORDER BY Total_Spent DESC;

-- Customer purchase frequency

SELECT
    Customer_ID,
    COUNT(*) AS TotalOrders
FROM retail_store_sales
GROUP BY Customer_ID
ORDER BY TotalOrders DESC;

-- Average customer spending

SELECT
    Customer_ID,
    ROUND(AVG(Total_Spent),2) AS AvergeSpending
FROM retail_store_sales
GROUP BY Customer_ID
ORDER BY AvergeSpending DESC;

-- Product Analysis
-- Best selling products by quantity

SELECT
    Item,
    SUM(Quantity) AS TotalQuantity
FROM retail_store_sales
GROUP BY Item
ORDER BY TotalQuantity DESC;

-- Highest revenue products

SELECT
    Item,
    SUM(Total_Spent) AS TotalAmount
FROM retail_store_sales
GROUP BY Item
ORDER BY TotalAmount DESC;

-- Average price by category

SELECT
    Category,
    AVG(Price_Per_Unit) AS AveragePrice
FROM retail_store_sales
GROUP BY Category
ORDER BY AveragePrice DESC;