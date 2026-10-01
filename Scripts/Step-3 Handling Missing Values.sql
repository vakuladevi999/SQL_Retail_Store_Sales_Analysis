

UPDATE retail_store_sales
SET Price_Per_Unit = Total_Spent / Quantity
WHERE Quantity IS NOT NULL AND
      Total_Spent IS NOT NULL AND
	  Price_Per_Unit IS NULL;


UPDATE retail_store_sales
SET Quantity = 1,Total_Spent = Price_Per_Unit
WHERE Price_Per_Unit IS NOT NULL AND
      Quantity IS NULL AND
	  Total_Spent IS NULL;
