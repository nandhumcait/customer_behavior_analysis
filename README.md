📊 Customer Behavior analysis 

Business Problem Statement:

A leading retail company wants to better understand its customers’ shopping behavior in order 
to improve sales, customer satisfaction, and long-term loyalty. The management team has noticed changes in purchasing patterns across demographics, product categories, and sales channels (online vs. offline). They are particularly interested in uncovering which factors, such as discounts, reviews, seasons, or payment preferences, drive consumer decisions and repeat purchases.This project demonstrates the complete  data analysis workflow — from data collection to visualization and reporting.It includes loading and exploring a dataset in Python, cleaning and preparing the data, performing SQL queries in PostgreSQL, and building an interactive Power BI dashboard to communicate insights effectively.

The goal of this project is to showcase strong analytical, technical, and storytelling skills in a real-world data analysis scenario.

Project Overview
This project analyzes customer shopping behavior using transactional data from 3,900 purchases across various product categories. The goal is to uncover insights into spending patterns, customer segments, product preferences, and subscription behavior to guide strategic business decisions.

Dataset Summary
-Rows:3,900
- Columns:18
- Key Features:
- Customer demographics (Age, Gender, Location, Subscription Status)
- Purchase details (Item Purchased, Category, Purchase Amount, Season, Size, Color)
- Shopping behavior (Discount Applied, Promo Code Used, Previous Purchases,
- Frequency of Purchases, Review Rating, Shipping Type)
- Missing Data:37 values in Review Rating column

🛠️ Tools & Technologies

Python – Data loading, cleaning, and exploratory data analysis (EDA)

Pandas / NumPy / Matplotlib / Seaborn – Data manipulation & visualization

PostgreSQL – SQL queries and advanced data retrieval

Power BI – Interactive dashboard creation

MS PowerPoint / Report – Presentation and project summary

🔍 Project Steps

Data Loading

Imported dataset into Python using Pandas.

Inspected data types, missing values, and structure.

Exploratory Data Analysis (EDA)

Performed descriptive statistics and visualized key trends.

Identified patterns, correlations, and outliers.

Data Cleaning

Handled missing values, duplicates, and inconsistent formats.

Standardized columns and prepared data for SQL storage.

SQL Analysis

Loaded cleaned data into PostgreSQL.

Wrote SQL queries to extract insights and answer business questions.

Dashboard Development (Power BI)

Connected Power BI to PostgreSQL.

Built visualizations (KPIs, trends, filters, and drill-downs).

Designed an intuitive, interactive dashboard layout.

Reporting & Presentation

Summarized findings in a clear written report.

Created a PowerPoint presentation for stakeholders.

📈 Dashboard Highlights

Overview page with KPIs and key metrics

Trend analysis over time

Filters for category, region, or period

Drill-down views for detailed exploration

<img width="1211" height="743" alt="Image" src="https://github.com/user-attachments/assets/c2f98746-52e3-4e7e-932e-1c9fe267bee7" />

<img width="1208" height="734" alt="Image" src="https://github.com/user-attachments/assets/1c6d77c4-ab83-47dc-b2bf-476708985f6e" />

--

<img width="1205" height="743" alt="Image" src="https://github.com/user-attachments/assets/e6574f15-a112-46c5-85fc-f2920eca24e8" />
🧾 Results & Insights

- Discounts and promotions significantly drive purchase frequency  
- Subscription customers show **35% higher repeat purchase rate**  
- **Seasonal peaks** observed during festive periods  
- Positive product reviews strongly correlate with higher spending 

1.Clone the repository
git clone https://github.com/nandhumcait/customer-behavior-analysis.git

2.Install dependencies
pip install -r requirements.txt

3.Load cleaned data into PostgreSQL
Use the SQL scripts in the /sql folder.

4.Open Power BI
Connect to the PostgreSQL database.

