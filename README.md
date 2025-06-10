
# Task 6: Sales Trend Analysis Using MySQL

## 🎯 Objective
Analyze monthly revenue and order volume using MySQL from a sales dataset.

## 📁 Files Included
- `task6_sales_trend.sql`: Full SQL script with table creation, sample data, and queries.
- `task6_hints_mysql.sql`: Step-by-step SQL queries based on the hints provided in the task.
- `online_sales_sample.csv`: Sample sales data that was inserted into the database (simulated via SQL inserts).

## 🧪 SQL Concepts Used
- `YEAR()`, `MONTH()`, and `EXTRACT()` to extract date parts
- `SUM()` for revenue aggregation
- `COUNT(DISTINCT ...)` for unique order volume
- `GROUP BY` for monthly grouping
- `ORDER BY` for sorting
- `WHERE ... BETWEEN` for date filtering
- `LIMIT` to restrict top results

## 📊 Sample Queries
```sql
-- Monthly Revenue and Order Volume
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    year, month;

-- Top 3 Months by Revenue
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    month
ORDER BY 
    monthly_revenue DESC
LIMIT 3;
```

## 📌 How to Use
1. Run the SQL scripts in MySQL Workbench or phpMyAdmin.
2. Review the outputs and modify date ranges if needed.
3. Upload this folder to GitHub and submit your repo link.

