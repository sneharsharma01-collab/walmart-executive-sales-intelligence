-- create  database walmart;
use walmart;
show tables;
select count(*) from walmart_sales;


SELECT
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS average_profit,
    ROUND(AVG(discount) * 100, 2) AS average_discount_pct
FROM walmart_sales;

SELECT
    product_category,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS average_profit
FROM walmart_sales
GROUP BY product_category
ORDER BY total_sales DESC;

SELECT
    region,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS average_profit
FROM walmart_sales
GROUP BY region
ORDER BY total_profit DESC;

SELECT
    discount_band,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS average_profit
FROM walmart_sales
GROUP BY discount_band
ORDER BY
    CASE discount_band
        WHEN '0%' THEN 1
        WHEN '1-5%' THEN 2
        WHEN '6-10%' THEN 3
        WHEN '11-15%' THEN 4
        WHEN '16%+' THEN 5
        ELSE 6
    END;

SELECT
    order_year,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS average_profit
FROM walmart_sales
GROUP BY order_year
ORDER BY order_year; 

SELECT
    is_loss_making,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS average_profit
FROM walmart_sales
GROUP BY is_loss_making
ORDER BY is_loss_making;

SELECT
    product_category,
    COUNT(*) AS loss_orders,
    ROUND(SUM(sales), 2) AS loss_order_sales,
    ROUND(SUM(profit), 2) AS total_loss,
    ROUND(AVG(profit), 2) AS average_loss
FROM walmart_sales
WHERE is_loss_making = 1
GROUP BY product_category
ORDER BY total_loss ASC;
