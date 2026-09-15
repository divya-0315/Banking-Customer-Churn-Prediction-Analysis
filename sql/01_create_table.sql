/*==========================================================
  Banking Customer Churn Analysis
  Database Creation Script
==========================================================*/

-- Create Database
CREATE DATABASE IF NOT EXISTS bank_churn;

USE bank_churn;

-- Drop table if it already exists
DROP TABLE IF EXISTS customer_churn;

-- Create Customer Churn Table
CREATE TABLE customer_churn (
    customer_id INT PRIMARY KEY,
    vintage INT,
    vintage_in_years DECIMAL(5,1),
    vintage_segmentation VARCHAR(50),
    age INT,
    age_group VARCHAR(10),
    gender VARCHAR(20),
    dependents INT,
    occupation VARCHAR(100),	
    city INT,
    customer_nw_category INT,
    branch_code INT,
    current_balance DECIMAL(18,2),
    balance_segment VARCHAR(50),
    previous_month_end_balance DECIMAL(18,2),
    average_monthly_balance_prevQ DECIMAL(18,2),
    average_monthly_balance_prevQ2 DECIMAL(18,2),
    current_month_credit DECIMAL(18,2),
    previous_month_credit DECIMAL(18,2),
    current_month_debit DECIMAL(18,2),
    previous_month_debit DECIMAL(18,2),
    current_month_balance DECIMAL(18,2),
    previous_month_balance DECIMAL(18,2),
    churn TINYINT,
    last_transaction VARCHAR(10)
);