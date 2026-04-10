CREATE DATABASE walmart_sales;
USE walmart_sales;
USE walmart_sales;
SELECT * FROM walmart_cleaned LIMIT 10;

SELECT COUNT(*) FROM walmart_cleaned;

SHOW WARNINGS;
SELECT 
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit,
  COUNT(*) AS Total_Orders
FROM walmart_cleaned;

SELECT 
  Category,
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit
FROM walmart_cleaned
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT 
  Region,
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit
FROM walmart_cleaned
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT 
  `Is Discounted`,
  COUNT(*) AS Total_Orders,
  ROUND(AVG(Profit), 2) AS Avg_Profit,
  ROUND(AVG(`Profit Margin %`), 2) AS Avg_Margin
FROM walmart_cleaned
GROUP BY `Is Discounted`;

SELECT 
  `Order ID`,
  Category,
  Sales,
  Profit,
  `Is Discounted`
FROM walmart_cleaned
WHERE Profit < 0
ORDER BY Profit ASC
LIMIT 10;

CREATE VIEW profitability_summary AS
SELECT 
  Category,
  `Sub-Category`,
  COUNT(*) AS Total_Orders,
  ROUND(SUM(Sales), 2) AS Total_Sales,
  ROUND(SUM(Profit), 2) AS Total_Profit,
  ROUND(AVG(`Profit Margin %`), 1) AS Avg_Margin_Pct
FROM walmart_cleaned
GROUP BY Category, `Sub-Category`;

SELECT * FROM profitability_summary ORDER BY Total_Profit DESC;