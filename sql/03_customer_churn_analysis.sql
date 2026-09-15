/*==========================================================
  Banking Customer Churn Analysis
  Data Analysis Script
==========================================================*/

USE bank_churn;

-- Total Customers
SELECT
COUNT(*) AS Total_Customers
FROM customer_churn;

-- Churn Summary
SELECT
SUM(churn) AS Churned_Customers,
COUNT(*)-SUM(churn) AS Retained_Customers,
ROUND(AVG(churn)*100,2) AS Churn_Rate
FROM customer_churn;

-- Churn by Gender
SELECT
gender,
COUNT(*) AS Total_Customers,
SUM(churn) AS Churned_Customers,
ROUND(AVG(churn)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY gender
ORDER BY Churn_Rate DESC;

-- Churn by Age Group
SELECT
age_group,
COUNT(*) AS Total_Customers,
SUM(churn) AS Churned_Customers,
ROUND(AVG(churn)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY age_group
ORDER BY Churn_Rate DESC;

-- Churn by Occupation
SELECT
occupation,
COUNT(*) AS Total_Customers,
SUM(churn) AS Churned_Customers,
ROUND(AVG(churn)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY occupation
ORDER BY Churn_Rate DESC;

-- Churn by Customer Network Category
SELECT
customer_nw_category,
COUNT(*) AS Total_Customers,
SUM(churn) AS Churned_Customers,
ROUND(AVG(churn)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY customer_nw_category
ORDER BY customer_nw_category;

-- Churn by Balance Segment
SELECT
balance_segment,
COUNT(*) AS Total_Customers,
SUM(churn) AS Churned_Customers,
ROUND(AVG(churn)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY balance_segment
ORDER BY Churn_Rate DESC;

-- Average Balance by Churn
SELECT
churn,
ROUND(AVG(current_balance),2) AS Average_Current_Balance,
ROUND(AVG(current_month_balance),2) AS Average_Current_Month_Balance
FROM customer_churn
GROUP BY churn;

-- Transaction Activity
SELECT
last_transaction,
COUNT(*) AS Customers,
SUM(churn) AS Churned_Customers,
ROUND(AVG(churn)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY last_transaction
ORDER BY Churn_Rate DESC;

-- Customer Balance Statistics
SELECT
MIN(current_balance) AS Minimum_Balance,
MAX(current_balance) AS Maximum_Balance,
ROUND(AVG(current_balance),2) AS Average_Balance,
ROUND(STDDEV(current_balance),2) AS Balance_Std_Deviation
FROM customer_churn;

-- Customers with High Current Balance Who Churned
SELECT
customer_id,
current_balance,
occupation,
age,
gender
FROM customer_churn
WHERE churn=1
ORDER BY current_balance DESC
LIMIT 20;

