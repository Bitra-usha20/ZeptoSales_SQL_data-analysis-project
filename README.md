# ZeptoSales_SQL_data-analysis-project
## Project Overview
This project is a **real-world** SQL data analysis project based on an e-commerce inventory dataset inspired by Zepto, a quick-commerce grocery platform.
The goal of this project is to  works with raw data to perform data cleaning, analysis, and business insights using **SQL**.

## 📁 Dataset Overview
Source: Kaggle (Zepto Inventory Dataset)
Format: CSV
-----------------------------------
## Columns Used:
category – Product category
name – Product name
mrp – Maximum Retail Price
discountPercent – Discount percentage
discountedSellingPrice – Final selling price
availableQuantity – Stock quantity available
weightInGms – Product weight

outOfStock – Stock status

quantity – Units per package
🛠️ Tools & Technologies

MySQL

MySQL Workbench

SQL (Joins, Aggregations, Subqueries)

ER Diagram (Reverse Engineering)
Project Workflow
1️⃣ Database & Table Creation

Created MySQL database

Created zepto_v2 table using Table Import Wizard

2️⃣ Data Loading

Imported CSV file using MySQL Workbench

Ensured proper data types and encoding

3️⃣ Data Exploration

Total records count

Distinct categories

In-stock vs out-of-stock products

Duplicate product identification

4️⃣ Data Cleaning

Removed records with invalid MRP or price

Handled zero and null values

Standardized category values

5️⃣ Business Analysis
How to Run This Project

Clone the repository

Open MySQL Workbench

Create a database

Import CSV using Table Import Wizard

Run SQL queries from the .sql file
