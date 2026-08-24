-- End-to-End Sales & Profit Analysis

-- Table name: financial_data


-- 1. Overall KPIs

SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM("Units Sold") AS Total_Units_Sold,
    SUM(Profit) / NULLIF(SUM(Sales), 0) * 100 AS Profit_Margin_Percent
FROM financial_data;


-- 2. Sales and profit by product

SELECT
    Product,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM("Units Sold") AS Total_Units_Sold,
    SUM(Profit) / NULLIF(SUM(Sales), 0) * 100 AS Profit_Margin_Percent
FROM financial_data
GROUP BY Product
ORDER BY Total_Sales DESC;


-- 3. Sales and profit by country

SELECT
    Country,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM("Units Sold") AS Total_Units_Sold,
    SUM(Profit) / NULLIF(SUM(Sales), 0) * 100 AS Profit_Margin_Percent
FROM financial_data
GROUP BY Country
ORDER BY Total_Sales DESC;


-- 4. Sales and profit by segment

SELECT
    Segment,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM("Units Sold") AS Total_Units_Sold,
    SUM(Profit) / NULLIF(SUM(Sales), 0) * 100 AS Profit_Margin_Percent
FROM financial_data
GROUP BY Segment
ORDER BY Total_Sales DESC;


-- 5. Yearly performance

SELECT
    Year,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM("Units Sold") AS Total_Units_Sold
FROM financial_data
GROUP BY Year
ORDER BY Year;


-- 6. Monthly performance

SELECT
    "Month Number" AS Month_Number,
    "Month Name" AS Month_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM financial_data
GROUP BY "Month Number", "Month Name"
ORDER BY "Month Number";


-- 7. Discount band analysis

SELECT
    COALESCE("Discount Band", 'Not Specified') AS Discount_Band,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Discounts) AS Total_Discounts
FROM financial_data
GROUP BY COALESCE("Discount Band", 'Not Specified')
ORDER BY Total_Sales DESC;