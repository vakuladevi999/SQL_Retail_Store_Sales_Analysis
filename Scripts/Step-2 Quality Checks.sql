SELECT
	COUNT(*) AS Total_Records,
	COUNT(Transaction_ID) AS Transaction_ID,
	COUNT(Customer_ID) AS Customer_ID,
	COUNT(Category) AS Category,
	COUNT(Item) AS Item,
	COUNT(Price_Per_Unit) AS Price_Per_Unit,
	COUNT(Quantity) AS Quantity,
	COUNT(Total_Spent) AS Total_Spent,
	COUNT(Payment_Method) AS Payment_Method,
	COUNT(Location) AS Location,
	COUNT(Transaction_Date) AS Transaction_Date
FROM retail_store_sales;

SELECT
Transaction_ID
FROM retail_store_sales
WHERE Transaction_ID <> TRIM(Transaction_ID);

SELECT
Customer_ID
FROM retail_store_sales
WHERE Customer_ID <> TRIM(Customer_ID);

SELECT
Category
FROM retail_store_sales
WHERE Category <> TRIM(Category);

SELECT
Item
FROM retail_store_sales
WHERE Item <> TRIM(Item);

SELECT
Payment_Method
FROM retail_store_sales
WHERE Payment_Method <> TRIM(Payment_Method);

SELECT
Location
FROM retail_store_sales
WHERE Location <> TRIM(Location);

SELECT -- 609
COUNT(*) AS PricePerUnitNulls
FROM retail_store_sales
WHERE Quantity IS NOT NULL AND
      Total_Spent IS NOT NULL AND
	  Price_Per_Unit IS NULL;

SELECT
COUNT(*) AS TotalSpentNulls
FROM retail_store_sales
WHERE Quantity IS NOT NULL AND
      Price_Per_Unit IS NOT NULL AND
	  Total_Spent IS NULL;

SELECT -- 604
COUNT(*) QuantityAndToalSpentNulls
FROM retail_store_sales 
WHERE Price_Per_Unit IS NOT NULL AND
      Quantity IS NULL AND
	  Total_Spent IS NULL;


     

