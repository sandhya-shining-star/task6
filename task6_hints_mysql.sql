
-- TASK 6: Sales Trend Analysis Using MySQL (Hints Breakdown)

-- Create table structure
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Insert sample data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 100.00, 101),
(2, '2023-01-20', 250.00, 102),
(3, '2023-02-10', 150.00, 103),
(4, '2023-02-18', 300.00, 104),
(5, '2023-03-05', 200.00, 105),
(6, '2023-03-25', 350.00, 106),
(7, '2023-04-10', 180.00, 107),
(8, '2023-04-20', 220.00, 108),
(9, '2023-05-11', 400.00, 109),
(10, '2023-05-15', 120.00, 110),
(11, '2023-06-01', 330.00, 111),
(12, '2023-06-18', 140.00, 112),
(13, '2023-07-05', 310.00, 113),
(14, '2023-07-25', 260.00, 114),
(15, '2023-08-10', 180.00, 115),
(16, '2023-08-30', 390.00, 116),
(17, '2023-09-12', 210.00, 117),
(18, '2023-09-28', 190.00, 118),
(19, '2023-10-02', 410.00, 119),
(20, '2023-10-18', 370.00, 120),
(21, '2023-11-03', 430.00, 121),
(22, '2023-11-17', 280.00, 122),
(23, '2023-12-05', 390.00, 123),
(24, '2023-12-25', 460.00, 124),
(25, '2024-01-05', 210.00, 125),
(26, '2024-01-20', 190.00, 126),
(27, '2024-02-14', 310.00, 127),
(28, '2024-02-28', 290.00, 128),
(29, '2024-03-11', 370.00, 129),
(30, '2024-03-27', 360.00, 130);

-- a. Use EXTRACT(MONTH FROM order_date)
SELECT EXTRACT(MONTH FROM order_date) AS month FROM online_sales;

-- b. GROUP BY year/month
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS revenue
FROM 
    online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date);

-- c. Use SUM() for revenue
-- Already included in the above query as: SUM(amount) AS revenue

-- d. Use COUNT(DISTINCT order_id) for volume
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date);

-- e. Use ORDER BY for sorting
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS revenue
FROM 
    online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    year, month;

-- f. Limit results for specific time periods (e.g., year 2023)
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    year, month;
