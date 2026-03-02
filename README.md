# Retail Database System: Supermarket Order Management

## 📌 Project Overview
This project architects a relational database schema for supermarket operations to efficiently handle inventory management, customer data, and sales transactions. The primary focus is on **data integrity** and **query scalability** to support rapid business decision-making.

## 🚀 Key Objectives & Results
* **Database Optimization**: Architected a relational database schema (ERD) and performed 1NF-3NF normalization to eliminate data redundancy and ensure high data integrity for retail operations.
* **Technical Execution**: Implemented DDL and DML scripts in MS SQL Server, applying strict constraints and complex transaction queries to maintain high-quality datasets.
* **Business Intelligence**: Constructed complex transaction queries to generate sales reports, product trends, and customer loyalty analytics.

## 📊 Database Architecture (ERD)
The system consists of 6 core entities connected via strict referential integrity to ensure a seamless order fulfillment workflow:

![Supermarket ERD](./docs/ERD_Supermarket.jpeg)

* **Customers**: Manages customer profiles and contact data.
* **Staff**: Manages employee records responsible for processing transactions.
* **Product & ProductType**: Normalized product categorization for storage efficiency.
* **TransactionHeader & TransactionDetail**: Separation of transaction records to support high-level data integrity and granular item tracking per transaction.

## 🛠️ Tech Stack
* **DBMS**: Microsoft SQL Server (SSMS)
* **Modeling Tools**: Visual Paradigm
* **Language**: SQL

## 🔍 Implementation Highlights

### 1. Normalization Strategy
Data was transformed from an unorganized state into 3NF:
* **1NF**: Ensured every column is atomic and assigned Primary Keys.
* **2NF**: Eliminated partial dependencies by separating the `Product` and `ProductType` tables.
* **3NF**: Eliminated transitive dependencies, ensuring every non-key attribute depends strictly on the Primary Key.

### 2. Sample Complex Analysis
The following is a sample query used to identify the best-selling products grouped by their categories:
```sql
SELECT 
    pt.ProductTypeName, 
    p.ProductName, 
    SUM(td.Quantity) as TotalSold
FROM Product p
JOIN ProductType pt ON p.ProductTypeID = pt.ProductTypeID
JOIN TransactionDetail td ON p.TransactionID = td.TransactionID
GROUP BY pt.ProductTypeName, p.ProductName
ORDER BY TotalSold DESC;
