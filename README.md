# 🚴 Bike Sharing Data Analysis
### SQL-Based Descriptive Analytics & Reporting | iNeuBytes Internship

<p align="center">
  <img src="https://img.shields.io/badge/Internship-iNeuBytes-2563EB?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Domain-Data%20Analytics-0F766E?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Database-MySQL%208.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
  <img src="https://img.shields.io/badge/Status-Completed-16A34A?style=for-the-badge" />
</p>

---

## 📌 Project Overview

This project focuses on analyzing bike-sharing demand using **MySQL 8.0**. The objective is to transform raw rental data into meaningful insights through data inspection, data cleaning, SQL-based descriptive analytics, and KPI reporting.

The analysis explores rental patterns across different hours, days, months, seasons, weather conditions, and user categories to understand demand behavior and identify key usage trends.

## 🎯 Objectives

- Understand the structure and quality of the Bike Sharing dataset.
- Perform data inspection and cleaning using SQL.
- Analyze rental trends across different time periods.
- Compare casual and registered user activity.
- Calculate key performance indicators (KPIs).
- Generate meaningful business insights using SQL queries.

## 📂 Dataset

**Dataset:** Bike Sharing Dataset

**Source:** [Kaggle – Bike Sharing Dataset](https://www.kaggle.com/datasets/lakshmi25npathi/bike-sharing-dataset)

**Original Source:** [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset)

The dataset contains bike rental records at daily and hourly levels.

| File | Description |
|---|---|
| `day.csv` | Daily bike rental records |
| `hour.csv` | Hourly bike rental records |

**Database:** `bike_sharing_analytics`

**Tables used:** `day`, `hour_fixed`, `hour_clean`

## 🛠️ Tools & Technologies

- **MySQL 8.0** – Database management and SQL analysis
- **MySQL Workbench** – Query execution and database inspection
- **GitHub** – Project documentation and version control
- **Google Docs** – Internship task reporting

## 📊 Key Performance Indicators (KPIs)

The project focuses on six key analytical metrics:

1. **Total Rentals** – Overall number of bike rentals.
2. **Casual vs Registered Rentals** – Comparison of user categories.
3. **Average Hourly Rentals** – Average rental demand per hour.
4. **Peak Rental Hour** – Identification of the busiest hour.
5. **Working vs Non-Working Day Analysis** – Comparison of rental activity.
6. **Monthly Rental Trends** – Month-wise demand analysis.

## 🔍 SQL Analysis Performed

- Database and table inspection
- Data type and schema validation
- NULL value identification
- Duplicate record checks
- Data consistency and range validation
- Aggregate functions: `SUM()`, `AVG()`, `COUNT()`
- Filtering and grouping: `WHERE`, `GROUP BY`, `HAVING`
- Sorting and ranking analysis
- Date and time-based analysis
- KPI calculation and trend identification

## 📁 Repository Structure

```text
internsKhilender_INBT026845_iNeuBytes/
│
├── README.md
│
└── Task 1/
    └── Bike_Sharing_SQL_Analysis.sql
```

*The repository structure may be updated as additional task documentation is added.*

## 💡 Key Learning Outcomes

- Practical experience with relational databases and MySQL.
- Understanding of data cleaning and validation techniques.
- Writing analytical SQL queries for real-world datasets.
- Converting raw data into measurable KPIs.
- Developing data-driven insights and documenting findings.

## ⚠️ Analytical Limitation

The dataset does not contain individual customer identifiers. Therefore, customer-level retention and repeat-customer cohort analysis cannot be reliably performed. The project focuses on time-based rental trends and available user-category comparisons instead.

## 👨‍💻 Internship Details

| Detail | Information |
|---|---|
| Intern Name | Khilender |
| Internship Organization | iNeuBytes |
| Course ID | DAINB20926 |
| Internship ID | INBT026845 |
| Task | Task 1 |
| Project Domain | Data Analytics |
| Database | MySQL 8.0 |

---

<p align="center">
  **Turning Raw Data into Meaningful Insights with SQL.**
  <br/>
  <b>Developed by Khilender Rajput</b>
</p>
