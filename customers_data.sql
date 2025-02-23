CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100)
);

INSERT INTO customers (first_name, last_name, email, phone, address, city, country) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm St', 'New York', 'USA'),
('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Oak Ave', 'Los Angeles', 'USA'),
('Michael', 'Johnson', 'michael.johnson@example.com', '345-678-9012', '789 Pine Rd', 'Chicago', 'USA'),
('Emily', 'Williams', 'emily.williams@example.com', '456-789-0123', '321 Maple Dr', 'Houston', 'USA'),
('David', 'Brown', 'david.brown@example.com', '567-890-1234', '654 Cedar Ln', 'Phoenix', 'USA'),
('Sophia', 'Miller', 'sophia.miller@example.com', '678-901-2345', '987 Birch St', 'San Antonio', 'USA'),
('Lucas', 'Davis', 'lucas.davis@example.com', '789-012-3456', '321 Oak St', 'San Diego', 'USA'),
('Olivia', 'Garcia', 'olivia.garcia@example.com', '890-123-4567', '543 Pine Ave', 'Dallas', 'USA'),
('Daniel', 'Martinez', 'daniel.martinez@example.com', '901-234-5678', '876 Elm Rd', 'San Jose', 'USA'),
('Isabella', 'Hernandez', 'isabella.hernandez@example.com', '012-345-6789', '210 Maple St', 'Austin', 'USA'),
('Ethan', 'Lopez', 'ethan.lopez@example.com', '123-456-7891', '543 Birch Rd', 'Fort Worth', 'USA'),
('Mia', 'Gonzalez', 'mia.gonzalez@example.com', '234-567-8902', '654 Oak Ln', 'Columbus', 'USA'),
('Alexander', 'Wilson', 'alexander.wilson@example.com', '345-678-9013', '765 Cedar St', 'Charlotte', 'USA'),
('Charlotte', 'Anderson', 'charlotte.anderson@example.com', '456-789-0124', '432 Pine Rd', 'Indianapolis', 'USA'),
('Benjamin', 'Thomas', 'benjamin.thomas@example.com', '567-890-1235', '321 Maple Ave', 'Seattle', 'USA'),
('Amelia', 'Taylor', 'amelia.taylor@example.com', '678-901-2346', '876 Birch St', 'Denver', 'USA'),
('James', 'Moore', 'james.moore@example.com', '789-012-3457', '654 Oak Rd', 'Washington', 'USA'),
('Harper', 'Jackson', 'harper.jackson@example.com', '890-123-4568', '432 Pine Ln', 'Boston', 'USA'),
('William', 'White', 'william.white@example.com', '901-234-5679', '543 Maple Rd', 'Portland', 'USA'),
('Amos', 'Martinez', 'amos.martinez@example.com', '012-345-6790', '321 Birch Ave', 'Miami', 'USA');

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    product_description TEXT,
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products (product_name, product_description, category, price) VALUES
('Wireless Mouse', 'Ergonomic wireless mouse with Bluetooth connectivity', 'Electronics', 25.99),
('Gaming Keyboard', 'Mechanical keyboard with customizable RGB lights', 'Electronics', 79.99),
('Laptop Stand', 'Adjustable laptop stand for desk', 'Accessories', 39.99),
('Noise-Cancelling Headphones', 'Over-ear headphones with noise cancellation feature', 'Electronics', 149.99),
('4K Monitor', 'Ultra HD 4K monitor with a 60Hz refresh rate', 'Electronics', 299.99),
('Smartphone Case', 'Protective case for iPhone and Android smartphones', 'Accessories', 19.99),
('Bluetooth Speaker', 'Portable Bluetooth speaker with 12-hour battery life', 'Electronics', 59.99),
('Smartwatch', 'Smartwatch with fitness tracking and heart rate monitor', 'Electronics', 129.99),
('Wired Earbuds', 'Affordable wired earbuds with high-quality sound', 'Accessories', 14.99),
('External SSD', 'Fast external SSD storage with 1TB capacity', 'Electronics', 89.99),
('Wireless Charger', 'Qi-enabled wireless charger for smartphones', 'Accessories', 29.99),
('Desk Organizer', 'Wooden desk organizer for office supplies', 'Furniture', 49.99),
('Coffee Maker', 'Compact coffee maker with built-in grinder', 'Appliances', 99.99),
('Portable Air Conditioner', 'Small portable air conditioner for cooling rooms', 'Appliances', 199.99),
('LED Desk Lamp', 'LED desk lamp with adjustable brightness', 'Furniture', 39.99);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2023-02-01', 85.99),
(1, '2023-02-03', 129.99),
(2, '2023-02-05', 189.99),
(2, '2023-02-07', 249.99),
(2, '2023-02-09', 349.99),
(3, '2023-02-03', 79.99),
(3, '2023-02-08', 219.99),
(4, '2023-02-07', 249.99),
(4, '2023-02-11', 159.99),
(5, '2023-02-09', 349.99),
(5, '2023-02-15', 199.99),
(6, '2023-02-12', 199.99),
(6, '2023-02-14', 59.99),
(6, '2023-02-16', 129.99),
(7, '2023-02-14', 59.99),
(7, '2023-02-18', 179.99),
(8, '2023-02-16', 129.99),
(8, '2023-02-20', 249.99),
(9, '2023-02-17', 219.99),
(9, '2023-02-22', 149.99),
(10, '2023-02-19', 159.99),
(10, '2023-02-23', 99.99),
(11, '2023-02-21', 109.99),
(11, '2023-02-25', 169.99),
(12, '2023-02-23', 139.99),
(12, '2023-02-27', 149.99),
(13, '2023-02-24', 179.99),
(13, '2023-02-28', 249.99),
(14, '2023-02-26', 149.99),
(14, '2023-02-28', 249.99),
(14, '2023-02-01', 159.99),
(15, '2023-02-28', 249.99),
(15, '2023-02-15', 199.99),
(16, '2023-02-01', 159.99),
(16, '2023-02-05', 249.99),
(16, '2023-02-18', 219.99),
(17, '2023-02-03', 129.99),
(17, '2023-02-06', 299.99),
(18, '2023-02-06', 299.99),
(18, '2023-02-09', 159.99),
(19, '2023-02-08', 59.99),
(19, '2023-02-22', 249.99),
(20, '2023-02-09', 89.99),
(20, '2023-02-28', 179.99);

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10, 2),
    payment_method VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO payments (order_id, payment_date, amount, payment_method) VALUES
(1, '2023-02-01', 85.99, 'Credit Card'),
(2, '2023-02-05', 189.99, 'PayPal'),
(3, '2023-02-03', 79.99, 'Credit Card'),
(4, '2023-02-07', 249.99, 'Credit Card'),
(5, '2023-02-09', 349.99, 'PayPal'),
(6, '2023-02-12', 199.99, 'Bank Transfer'),
(7, '2023-02-14', 59.99, 'Credit Card'),
(8, '2023-02-16', 129.99, 'Credit Card'),
(9, '2023-02-17', 219.99, 'PayPal'),
(10, '2023-02-19', 159.99, 'Bank Transfer'),
(11, '2023-02-21', 109.99, 'Credit Card'),
(12, '2023-02-23', 139.99, 'PayPal'),
(13, '2023-02-24', 179.99, 'Credit Card'),
(14, '2023-02-26', 149.99, 'Bank Transfer'),
(15, '2023-02-28', 249.99, 'PayPal'),
(16, '2023-02-01', 159.99, 'Credit Card'),
(17, '2023-02-03', 129.99, 'PayPal'),
(18, '2023-02-06', 299.99, 'Credit Card'),
(19, '2023-02-08', 59.99, 'Bank Transfer'),
(20, '2023-02-09', 89.99, 'PayPal'),
(21, '2023-02-11', 159.99, 'Bank Transfer'),
(22, '2023-02-13', 169.99, 'Credit Card'),
(23, '2023-02-14', 89.99, 'PayPal'),
(24, '2023-02-16', 199.99, 'Credit Card'),
(25, '2023-02-17', 129.99, 'Bank Transfer'),
(26, '2023-02-18', 249.99, 'Credit Card'),
(27, '2023-02-21', 219.99, 'PayPal'),
(28, '2023-02-23', 129.99, 'Credit Card'),
(29, '2023-02-25', 159.99, 'Bank Transfer'),
(30, '2023-02-26', 179.99, 'Credit Card'),
(31, '2023-02-27', 109.99, 'PayPal'),
(32, '2023-02-28', 299.99, 'Credit Card'),
(33, '2023-02-01', 169.99, 'Bank Transfer'),
(34, '2023-02-03', 199.99, 'Credit Card'),
(35, '2023-02-05', 249.99, 'PayPal'),
(36, '2023-02-07', 129.99, 'Credit Card'),
(37, '2023-02-09', 99.99, 'PayPal'),
(38, '2023-02-11', 159.99, 'Bank Transfer'),
(39, '2023-02-12', 189.99, 'PayPal'),
(40, '2023-02-14', 179.99, 'Credit Card');


CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 25.99),
(1, 2, 1, 79.99),
(2, 3, 1, 39.99),
(2, 4, 1, 149.99),
(3, 5, 1, 299.99),
(3, 6, 1, 19.99),
(4, 7, 1, 59.99),
(4, 8, 1, 129.99),
(5, 9, 1, 219.99),
(5, 10, 1, 159.99),
(6, 11, 1, 29.99),
(7, 12, 1, 49.99),
(7, 13, 1, 99.99),
(8, 14, 1, 199.99),
(9, 15, 1, 149.99),
(10, 12, 1, 249.99),
(11, 1, 2, 25.99),
(12, 2, 2, 79.99),
(13, 3, 2, 39.99),
(14, 4, 2, 149.99),
(15, 5, 2, 299.99),
(16, 6, 2, 19.99),
(17, 7, 2, 59.99),
(18, 8, 2, 129.99),
(19, 9, 2, 219.99),
(20, 10, 2, 159.99),
(21, 11, 2, 29.99),
(22, 12, 2, 49.99),
(23, 13, 2, 99.99),
(24, 14, 2, 199.99),
(25, 15, 2, 149.99),
(26, 11, 2, 249.99),
(27, 1, 1, 25.99),
(28, 2, 1, 79.99),
(29, 3, 1, 39.99),
(30, 4, 1, 149.99),
(31, 5, 1, 299.99),
(32, 6, 1, 19.99),
(33, 7, 1, 59.99),
(34, 8, 1, 129.99),
(35, 9, 1, 219.99),
(36, 10, 1, 159.99),
(37, 11, 1, 29.99),
(38, 12, 1, 49.99),
(39, 13, 1, 99.99),
(40, 14, 1, 199.99);


SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM order_items;




-- Total sales per product category
SELECT pr.category, SUM(oi.quantity * oi.price) AS total_sales
FROM order_items oi
JOIN products pr ON oi.product_id = pr.product_id
GROUP BY pr.category;

-- Average order amount per customer
SELECT c.first_name, c.last_name, ROUND(AVG(o.total_amount), 2) AS average_order_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- Number of orders per payment method
SELECT pa.payment_method, COUNT(*) AS order_count
FROM payments pa
GROUP BY pa.payment_method;

-- Customers who placed more than one order
SELECT c.first_name, c.last_name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 1;

-- Total sales by month
SELECT MONTH(o.order_date) AS month, SUM(o.total_amount) AS total_sales
FROM orders o
GROUP BY MONTH(o.order_date)
ORDER BY month;

-- Top 5 most expensive products sold
SELECT pr.product_name, SUM(oi.quantity * oi.price) AS total_sales
FROM order_items oi
JOIN products pr ON oi.product_id = pr.product_id
GROUP BY pr.product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Customers who bought only one product
SELECT c.first_name, c.last_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id
HAVING COUNT(DISTINCT oi.product_id) = 1;

-- Total sales by payment method
SELECT pa.payment_method, SUM(pa.amount) AS total_sales
FROM payments pa
GROUP BY pa.payment_method;

-- Average number of items per order
SELECT ROUND(AVG(item_count), 2) AS avg_items_per_order
FROM (
    SELECT COUNT(oi.order_item_id) AS item_count
    FROM order_items oi
    GROUP BY oi.order_id
) AS order_item_counts;

-- Highest paying customer
SELECT c.first_name, c.last_name, SUM(pa.amount) AS total_payment
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments pa ON o.order_id = pa.order_id
GROUP BY c.customer_id
ORDER BY total_payment DESC
LIMIT 1;

-- Total order value for each customer
SELECT c.first_name, c.last_name, SUM(o.total_amount) AS total_payment
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_payment DESC;

-- Most expensive product
SELECT pr.product_name, pr.price
FROM products pr
ORDER BY pr.price DESC
LIMIT 1;

-- Average price of products per category
SELECT pr.category, ROUND(AVG(pr.price), 2) AS average_price
FROM products pr
GROUP BY pr.category;

-- Products ordered more than 5 times
SELECT pr.product_name, SUM(oi.quantity) AS product_ordered
FROM products pr
JOIN order_items oi ON pr.product_id = oi.product_id
GROUP BY pr.product_name
HAVING product_ordered > 5
ORDER BY product_ordered DESC;

-- Customers who placed orders in February 2023
SELECT c.first_name, c.last_name, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2023-02-01' AND '2023-02-28';

-- Most frequently used payment methods
SELECT pa.payment_method, COUNT(pa.payment_method) as method_count
FROM payments pa
GROUP BY pa.payment_method;

-- Three most recent orders
SELECT  o.order_id, o.order_date
FROM orders o
ORDER BY o.order_date DESC
LIMIT 3;

-- Products never sold
SELECT pr.product_name
FROM products pr
LEFT JOIN order_items oi ON pr.product_id = oi.product_id
WHERE oi.product_id IS NULL;

-- Total amount paid by customers in February 2023
SELECT SUM(o.total_amount) as total_amount_paid
FROM orders o
WHERE o.order_date BETWEEN '2023-02-01' AND '2023-02-28';

-- Customers with orders above the average order value
SELECT c.first_name, c.last_name, o.order_id
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > (SELECT AVG(o.total_amount) FROM orders o);