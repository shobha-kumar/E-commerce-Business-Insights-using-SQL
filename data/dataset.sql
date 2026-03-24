#customers
customer_id INT,
customer_name VARCHAR(50),
city VARCHAR(50)
#orders
order_id INT,
customer_id INT,
order_date DATE,
total_amount DECIMAL(10,2)
#order_items
order_id INT,
product_name VARCHAR(50),
quantity INT,
price DECIMAL(10,2)