CREATE TABLE pricing_data (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    base_price DECIMAL(10,2),
    selling_price DECIMAL(10,2),
    demand INT,
    sale_date DATE,
    region VARCHAR(50)
);

INSERT INTO pricing_data VALUES
(1, 'Smartphone A', 'Electronics', 12000, 13500, 150, '2025-01-01', 'South'),
(2, 'Smartphone B', 'Electronics', 15000, 16000, 90, '2025-01-01', 'South'),
(3, 'Headphones X', 'Accessories', 2000, 2500, 300, '2025-01-01', 'North'),
(4, 'Headphones Y', 'Accessories', 1800, 2200, 280, '2025-01-02', 'North'),
(5, 'Laptop L', 'Electronics', 45000, 48000, 40, '2025-01-02', 'West');
