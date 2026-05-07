USE retail_project;
SELECT COUNT(*) FROM customers;
SELECT * FROM customers LIMIT 5;
SELECT SUM(Purchase_Amount_USD) AS total_revenue
FROM customers;
SELECT SUM(Purchase_Amount_USD) AS total_revenue
FROM customers;
SELECT AVG(Purchase_Amount_USD) AS avg_order_value
FROM customers;
SELECT Category, SUM(Purchase_Amount_USD) AS revenue
FROM customers
GROUP BY Category
ORDER BY revenue DESC;
SELECT Gender, AVG(Purchase_Amount_USD) AS avg_spend
FROM customers
GROUP BY Gender;
SELECT Location, SUM(Purchase_Amount_USD) AS revenue
FROM customers
GROUP BY Location
ORDER BY revenue DESC
LIMIT 5;
SELECT Age_Group, AVG(Purchase_Amount_USD) AS avg_spend
FROM customers
GROUP BY Age_Group;
SELECT Customer_ID, SUM(Purchase_Amount_USD) AS total_spent
FROM customers
GROUP BY Customer_ID
ORDER BY total_spent DESC
LIMIT 10;
SELECT 
CASE 
    WHEN Purchase_Amount_USD > 80 THEN 'High'
    WHEN Purchase_Amount_USD BETWEEN 40 AND 80 THEN 'Medium'
    ELSE 'Low'
END AS spending_level,
COUNT(*) AS customers
FROM customers
GROUP BY spending_level;
SELECT COUNT(*) FROM customers;
SELECT SUM(Purchase_Amount_USD) AS total_revenue
FROM customers;
SELECT AVG(Purchase_Amount_USD) AS avg_order_value
FROM customers;
SELECT Category, SUM(Purchase_Amount_USD) AS revenue
FROM customers
GROUP BY Category
ORDER BY revenue DESC;
SELECT * FROM customers;