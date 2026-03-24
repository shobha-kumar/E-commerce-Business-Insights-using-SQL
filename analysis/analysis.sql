#Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM orders;
#Monthly Sales Trend
SELECT 
    MONTH(order_date) AS month,
    SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;
#Customers
SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;
#Best Selling Products
SELECT 
    product_name,
    SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_name
ORDER BY total_sold DESC;
#Average Order Value
SELECT AVG(total_amount) AS avg_order_value
FROM orders;
#Customer Retention (Repeat Customers)
SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;