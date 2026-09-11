-- ============================================
-- Additional SQL Practice
-- Sales Analysis - Week 1 Skills
-- ============================================


-- 1. WHERE
-- Find orders with a value greater than 10,000

SELECT
    customer_name,
    category,
    total_price
FROM orders
WHERE total_price > 10000
ORDER BY total_price DESC;


-- 2. HAVING
-- Find customers whose total spending is greater than 30,000

SELECT
    customer_name,
    SUM(total_price) AS total_spent
FROM orders
GROUP BY customer_name
HAVING SUM(total_price) > 30000
ORDER BY total_spent DESC;


-- 3. JOIN
-- Compare different orders within the same category

SELECT
    o1.category,
    o1.product_name AS product_1,
    o1.total_price AS price_1,
    o2.product_name AS product_2,
    o2.total_price AS price_2
FROM orders AS o1
JOIN orders AS o2
    ON o1.category = o2.category
    AND o1.order_id < o2.order_id
ORDER BY o1.category, o1.order_id
LIMIT 20;


-- 4. SUBQUERY
-- Find orders whose value is above the average order value

SELECT
    customer_name,
    category,
    total_price
FROM orders
WHERE total_price > (
    SELECT AVG(total_price)
    FROM orders
)
ORDER BY total_price DESC;


-- 5. WINDOW FUNCTION
-- Rank orders from highest to lowest value

SELECT
    customer_name,
    category,
    total_price,
    RANK() OVER (ORDER BY total_price DESC) AS order_rank
FROM orders
ORDER BY order_rank
LIMIT 20;