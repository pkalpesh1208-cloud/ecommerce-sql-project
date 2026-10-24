-- E-commerce Data Analysis using SQL and PostgreSQL

-- 1. Display all customers
SELECT * FROM customers;

-- 2. Display all products
SELECT * FROM products;

-- 3. Display all order items
SELECT * FROM order_items;

-- 4. Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 5. Count total products
SELECT COUNT(*) AS total_products
FROM products;

-- 6. Count total order items
SELECT COUNT(*) AS total_order_items
FROM order_items;

-- 7. Find total sales
SELECT SUM(quantity * price) AS total_sales
FROM order_items;

-- 8. Find sales by product
SELECT product_id,
       SUM(quantity * price) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC;

-- 9. Find product-wise quantity sold
SELECT product_id,
       SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id;

-- 10. Find average product price
SELECT AVG(price) AS average_price
FROM products;
