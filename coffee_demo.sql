CREATE DATABASE IF NOT EXISTS coffee_demo
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

USE coffee_demo;

CREATE TABLE IF NOT EXISTS coffee_inventory (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT IGNORE INTO coffee_inventory
    (id, product_name, unit_price, stock)
VALUES
    (1, '咖啡机', 600.00, 50),
    (2, '磨豆机', 300.00, 15),
    (3, '咖啡豆', 80.00, 120),
    (4, '奶泡机', 150.00, 8),
    (5, '滤纸', 30.00, 200);