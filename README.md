
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
 # 📊 Task 6: Sales Trend Analysis Using MySQL

## 🎯 Objective
Analyze monthly revenue and order volume using SQL queries on the `online_sales` dataset.

## 🧰 Tools Used
- MySQL
- SQL queries
- GitHub for submission

## 📁 Repository Contents
- `task6_sales_trend.sql`: Full SQL script including table creation, data insertion, and trend analysis queries.
- `task6_hints_mysql.sql`: Step-by-step implementation of each hint provided in the task guide.
- `online_sales_sample.csv`: CSV version of the sample dataset used in the SQL scripts.
- `README.md`: Documentation and explanation of the task.

## 📊 Key Concepts Used
- `YEAR()` and `MONTH()` to extract parts of date
- `SUM(amount)` to calculate monthly revenue
- `COUNT(DISTINCT order_id)` to calculate unique monthly order volume
- `GROUP BY` to aggregate data per month/year
- `ORDER BY` to sort results
- `LIMIT` to restrict top results
- `WHERE ... BETWEEN` for date filtering

## 🧮 Sample Query 1: Monthly Revenue & Order Volume
```sql
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


