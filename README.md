# customer_shopping_behavior_analysis

This project analyzes customer shopping patterns using transactional data. The goal is to understand revenue drivers, customer purchasing behavior, and product performance using SQL and Power BI. The project covers the complete analytics pipeline   from data loading to dashboard creation and business reporting.

1. Overview

The analysis focuses on identifying:

Top performing product categories

Customer segments that spend the most

Subscription vs non-subscription behavior

Seasonal sales trends

Payment and shipping preferences

The final output includes a SQL analysis, a Power BI dashboard, and a written report summarizing insights and recommendations.

2. Dataset

Rows: 3,900

Columns: 18

Data type: Customer purchase transactions

Includes fields related to:

Demographics (Age, Gender, Location)

Purchase details (Category, Price, Season, Size)

Behavior (Subscription, Payment, Shipping, Discounts)

Dataset was provided in CSV format.

3. Tools Used

MySQL – Data cleaning and SQL queries

Excel – Initial data inspection

Power BI – Dashboard and data visualization

MS Word – Final business report

4. Project Steps
✓ Load Dataset

Imported the CSV into MySQL and verified structure.

✓ Data Cleaning

Standardized column names

Removed spaces and special characters

Converted text fields to usable formats

✓ SQL Analysis

Used SQL to answer business questions such as:

Which category generates highest revenue?

Which age group spends most?

Which season drives most sales?

✓ Power BI Dashboard

Created interactive dashboard with filters, KPIs, and visuals.

✓ Business Report

Summarized insights and recommendations in MS Word.

5. Dashboard Highlights

The Power BI dashboard includes:

Total revenue and customer KPIs

Category-wise revenue

Spending by age and gender

Seasonal trends

Payment and shipping breakdown

Discount usage

Interactive slicers include:

Category

Gender

Shipping type

Season

6. Key Results (Insights)

Clothing category generates the highest revenue

Customers aged 46–60 spend the most

Unsubscribed users spend more than subscribed users

PayPal is the preferred payment method

Fall season has highest sales

Free shipping drives customer conversion

7. How to Run

Step 1: Clone repository

git clone <repository-link>


Step 2: Import dataset (CSV) into MySQL

Step 3: Run SQL queries located in the /SQL folder

Step 4: Open the Power BI file (.pbix) to view dashboard

Step 5: Read the final report in /Report

8. Project Structure
/Dataset
/SQL
/PowerBI
/Report
README.md
