# 🛒 ZeptoSales_SQL_Data_Analysis_Project

## 📌 Project Overview
- This project is a **real-world SQL data analysis project** based on an e-commerce inventory dataset inspired by **Zepto**, a quick-commerce grocery platform.
- The goal of this project is to work with **raw data** and perform:
  - Data cleaning  
  - Data analysis  
  - Business insights using **SQL**

---

## 📁 Dataset Overview
- **Source:** Kaggle (Zepto Inventory Dataset)
- **Format:** CSV

---

## 🧾 Columns Used
- `category` – Product category  
- `name` – Product name  
- `mrp` – Maximum Retail Price  
- `discountPercent` – Discount percentage  
- `discountedSellingPrice` – Final selling price  
- `availableQuantity` – Stock quantity available  
- `weightInGms` – Product weight  
- `outOfStock` – Stock status  
- `quantity` – Units per package  

---

## 🛠️ Tools & Technologies
- MySQL  
- MySQL Workbench  
- SQL   
- ER Diagram (Reverse Engineering)

---

## 🔄 Project Workflow

### 1️⃣ Database & Table Creation
- Created MySQL database
- Created `zepto_v2` table using **Table Import Wizard**

### 2️⃣ Data Loading
- Imported CSV file using **MySQL Workbench**


### 3️⃣ Data Exploration
- Counted total number of records
- Identified distinct product categories
- Analyzed in-stock vs out-of-stock products
- Detected duplicate product entries

### 4️⃣ Data Cleaning
- Removed records with invalid MRP or selling price
- Handled zero and NULL values
### 5️⃣ Business Analysis


---

## ▶️ How to Run This Project
- Clone the repository
- Open **MySQL Workbench**
- Create a database
- Import the CSV using **Table Import Wizard**
- Run SQL queries from the `.sql` file

---

## 📐 ER Diagram
- Entity tables were created from raw data
- ER diagram generated using **MySQL Workbench Reverse Engineering**

---

## 📄 License
- MIT License  

