# Walmart Executive Sales Intelligence Dashboard

An end-to-end retail sales analysis project using **Python, SQL, Excel, and Power BI** to evaluate sales, profitability, discounts, loss-making orders, category performance, and regional performance.

## Project Overview

This project analyzes **8,399 Walmart retail transactions** to understand where sales are being generated, where profit is being created or lost, and how factors such as **product category, region, discount, and shipping time** relate to business performance.

The project covers:
* Data cleaning and analytical preparation in Python
* Exploratory analysis of sales, profit, discounts, categories, and regions
* SQL-based business analysis using MySQL
* Interactive Power BI dashboard development
* Identification of loss-making patterns and profitability differences
* Business recommendations based on the analysis

## Business Problem

Retail businesses need to understand not only how much they sell, but also **where profitability is being created or lost**.

This analysis investigates:
* Which product categories and regions contribute most to sales and profit
* Where loss-making orders are concentrated
* How discount levels relate to profitability
* Differences in profitability across regions and categories
* Whether operational factors such as shipping time provide additional business context

  ## Data Preparation

The original dataset contained **8,399 rows and 25 columns**.

Data preparation included:
* Standardized column names using lowercase and underscores
* Removed the unnecessary `Number of Records` field
* Converted relevant fields into appropriate data types
* Preserved missing values in `Customer Age` (903 records) and `Product Base Margin` (63 records) rather than imputing or removing them
* Retained negative-profit transactions because they are important for profitability analysis
* Created analysis-ready fields including:
  * Order year, quarter, month, and month name
  * Shipping days
  * Profit margin percentage
  * Loss-making order indicator
  * Discount band
* Produced an analysis-ready dataset containing **8,399 rows and 32 columns**

## Exploratory Data Analysis

The analysis examined overall sales and profitability along with category, regional, discount, and loss-making patterns.

### Overall Performance

* **Total Sales:** $14.92M
* **Total Profit:** $1.52M
* **Average Profit per Order:** $181.18
* **Average Discount:** 4.97%
* **Loss-Making Orders:** 4,264 of 8,399 (50.77%)

### Category Performance

* **Technology** generated the highest profit at approximately **$886.3K**
* **Office Supplies** generated approximately **$518.0K** in profit
* **Furniture** generated approximately **$117.4K** in profit
* Furniture had the highest total loss from loss-making orders at approximately **-$435.6K**

### Regional Performance

* **Central** generated the highest sales at approximately **$4.70M**
* **South** had the highest average profit per order at approximately **$229.87**

### Discount Analysis

* Orders with **1–5% discounts** generated approximately **$828.2K** in profit
* Orders with **6–10% discounts** generated approximately **$505.9K** in profit
* The **16%+ discount band** contained only 4 records and showed a small overall loss of approximately **-$582**

## SQL Analysis

The analysis-ready dataset was imported into **MySQL** as the `walmart_sales` table in the `walmart` database.

SQL analysis was used to investigate:
* Overall sales and profit performance
* Sales and profit by product category
* Regional sales and profitability
* Loss-making order patterns
* Discount and profitability relationships
* Order-level and aggregated business metrics

The analysis used SQL aggregations, filtering, grouping, conditional logic, and calculated metrics to answer business-focused questions.

