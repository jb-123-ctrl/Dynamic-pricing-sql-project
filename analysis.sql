-- Demand vs Price
SELECT product_name, selling_price, demand
FROM pricing_data
ORDER BY demand DESC;

-- Profit Analysis
SELECT
    product_name,
    (selling_price - base_price) AS profit_per_unit,
    demand,
    (selling_price - base_price) * demand AS total_profit
FROM pricing_data
ORDER BY total_profit DESC;

-- Dynamic Pricing Strategy
SELECT
    product_name,
    category,
    selling_price,
    demand,
    CASE
        WHEN demand >= 250 THEN 'Increase Price'
        WHEN demand BETWEEN 100 AND 249 THEN 'Keep Price'
        ELSE 'Apply Discount'
    END AS pricing_strategy
FROM pricing_data;

-- Category-wise Analysis
SELECT category, AVG(selling_price) AS avg_price, AVG(demand) AS avg_demand
FROM pricing_data
GROUP BY category;

-- Region-wise Demand
SELECT region, SUM(demand) AS total_demand
FROM pricing_data
GROUP BY region
ORDER BY total_demand DESC;
