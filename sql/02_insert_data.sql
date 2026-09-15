/*==========================================================
  Banking Customer Churn Analysis
  Data Loading Script
==========================================================*/

USE bank_churn;

LOAD DATA LOCAL INFILE
'D:/DIVYA/Data Analytics/DA Projects/Power BI/Customer Churn Prediction Analysis/churn_prediction.csv'
INTO TABLE customer_churn
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;