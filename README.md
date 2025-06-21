# 🍽️ Zomato Sales Data Analysis using SQL

## 📊 Project Overview

This SQL-based project explores and analyzes Zomato's restaurant dataset to extract actionable insights related to restaurant performance, customer preferences, cuisine diversity, pricing trends, and service availability. The analysis was performed using SQL queries and covered both data manipulation and analytical operations.

---

## 🎯 Objectives

- Import and clean Zomato sales data using SQL.
- Perform data exploration with aggregate functions and filtering.
- Implement **DML operations** like `UPDATE` and `DELETE`.
- Extract business insights with advanced `SELECT` queries.
- Use conditional logic and views to answer real-world questions.

---

## 🗃️ Dataset Details

- **Table Name:** `zomato`
- **Key Columns:** City, Cuisines, Average_Cost_for_two, Aggregate_Rating, Has_Table_booking, Has_Online_delivery, Price_range

---

## 🧾 Queries & Analysis Performed

| 🔢 Query No. | 🔍 Analysis Title                                      |
|-------------|--------------------------------------------------------|
| #1          | Top 10 Cities by Number of Restaurants                 |
| #2          | Most Common Cuisines                                   |
| #3          | Restaurants with Highest Ratings (≥ 4.5)               |
| #4          | Average Cost for Two by City                           |
| #5          | Table Booking Availability Distribution                |
| #6          | Online Delivery Availability by City                   |
| #7          | Distribution of Restaurants by Price Range             |
| #8          | Rating Text Distribution (e.g., Excellent, Poor, etc.) |
| #9          | Table Booking vs Rating Text Distribution              |
| #10         | Cuisines of the Highest Rated Restaurant               |
| #11         | Restaurants offering both table booking & delivery     |

---

## 🛠 Tools & Technologies Used

- **SQL (Structured Query Language)**
- **MySQL / PostgreSQL / SQLite** (any can be used)
- **RDBMS Concepts:** DDL, DML, Joins, Aggregation, Filtering
- **Data Cleaning & Formatting**

---

## 📌 Project Accomplishments

- ✅ Created a database and imported Zomato dataset.
- ✅ Cleaned and validated data types before querying.
- ✅ Performed DML operations (`UPDATE`, `DELETE`) to simulate real-world scenarios.
- ✅ Identified cities with high restaurant density.
- ✅ Discovered top cuisines and high-rated restaurants.
- ✅ Analyzed service availability like table booking & online delivery.
- ✅ Used subqueries to identify cuisine trends from top-rated restaurants.
- ✅ Built views to consolidate complex logic.

---

## 📁 Files Included

- `Zomato Analysis SQL.sql` – SQL query script  
- `SQL Project PPT.pptx` – Project presentation slides  
- `README.md` – Project documentation file

---

## 🚀 Future Improvements

- Integrate with Power BI for visual dashboards.
- Add views for profitability analysis.
- Normalize data into multiple relational tables.
- Connect live to Zomato API for real-time data (if available).

---

## 📧 Contact

Feel free to reach out for feedback or collaborations!  
**Author**: Sarthak Salvi  
**Email**: [sarthaksalvi2107@gmail.com]

---

⭐ *If you like this project, don't forget to give it a star!*

---

## 🔍 Sample Insight

> **Top 10 Cities by Number of Restaurants**
```sql
SELECT City, COUNT(*) AS Total_Restaurants
FROM zomato
GROUP BY City
ORDER BY Total_Restaurants DESC
LIMIT 10;


