USE coffee_demo;

CREATE TABLE IF NOT EXISTS coffee_sales (
    id INT PRIMARY KEY,
    product_id INT NOT NULL,
    sale_date DATE NOT NULL,
    quantity INT NOT NULL,
    sale_amount DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_coffee_sales_product
        FOREIGN KEY (product_id)
        REFERENCES coffee_inventory(id)
);

INSERT IGNORE INTO coffee_sales
    (id, product_id, sale_date, quantity, sale_amount)
VALUES
    (1, 1, '2026-09-01', 2, 1200.00),
    (2, 1, '2026-09-03', 1, 600.00),
    (3, 2, '2026-09-02', 3, 900.00),
    (4, 3, '2026-09-04', 10, 800.00),
    (5, 3, '2026-09-05', 5, 400.00),
    (6, 4, '2026-09-06', 2, 300.00),
    (7, 5, '2026-09-07', 20, 600.00);