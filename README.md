# SQL_Retail_Store_Sales_Analysis
Retail Store Sales analysis using SQL Server. The project follows 5 steps: preparing the table, checking data quality, handling missing values, calculating key business metrics, and performing advanced business analysis with 25 real-world SQL questions.
Retail Store Sales — SQL Project

📌 About the Project

This project is based on a Retail Store Sales dataset.

I used SQL Server to clean the data, check data quality, calculate business metrics, and answer business questions.

---

🛠️ Tools Used

- SQL Server
- SQL Server Management Studio (SSMS)

---

📊 Project Steps

Step 1 — Preparing the Table

I selected only the columns required for my analysis and created a separate table.

Columns used:

- Transaction ID
- Customer ID
- Category
- Item
- Price Per Unit
- Quantity
- Total Spent
- Payment Method
- Location
- Transaction Date

"Discount_Applied" was excluded from the analysis.

---

Step 2 — Data Quality Checks

I checked the quality of the data before making any changes.

Checks included:

- NULL values
- Duplicate values
- Missing values
- Leading and trailing spaces
- Data consistency
- Quantity, Price Per Unit, and Total Spent relationships

I also checked whether:

Quantity × Price Per Unit = Total Spent

---

Step 3 — Handling Missing Values

I used simple business rules to handle missing values.

If Price Per Unit is missing:

Price Per Unit = Total Spent ÷ Quantity

If Quantity and Total Spent are missing but Price Per Unit is available:

Quantity = 1

Total Spent = Price Per Unit

After making the changes, I validated the data again.

---

Step 4 — Key Business Metrics

I calculated important business metrics such as:

- Total Transactions
- Total Customers
- Total Categories
- Total Items
- Total Quantity Sold
- Total Sales
- Average Transaction Value
- Average Price Per Unit
- Payment Methods
- Locations

---

Step 5 — Advanced Business Analysis

I solved 25 business questions using SQL.

The analysis covered:

- Sales Analysis
- Customer Analysis
- Product Analysis
- Category Analysis
- Time Analysis
- Customer Ranking
- Product Ranking
- Repeat Customers
- Customer Recency
- Monthly Sales
- Month-over-Month Growth
- Top Customers and Products

---

🔄 Project Workflow

Prepare → Check → Clean → Measure → Analyze

---

🎯 What I Practiced

Through this project, I practiced:

- SQL Aggregations
- GROUP BY
- HAVING
- CASE
- CTEs
- Subqueries
- Window Functions
- ROW_NUMBER()
- RANK()
- LAG()
- COUNT(DISTINCT)
- Data Cleaning
- Business Analysis

---

👩‍💻 Author

Vakula Devi

Aspiring Data Analyst

SQL | Excel | Power BI | Python
