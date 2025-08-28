# Netflix-Churn-Analysis Using SQL & Power BI : 
Analyzed Netflix customer churn data to identify trends in subscription types, engagement, and retention. SQL was used for data querying, Excel for feature creation, and Power BI for interactive dashboards. This project analyzes customer churn for a fictional Netflix dataset to identify patterns in engagement, device usage, and subscription plans. The goal is to uncover insights that can help improve customer retention.

**Tools Used:**  
- Kaggle (dataset)
- MySQL (data querying)  
- Excel (data cleaning & column creation)  
- Power BI (dashboard visualization)  

## 📂 Dataset -
**Source:** Kaggle Netflix Customer Churn Dataset (1,000+ records) <br>
**Key Columns:**
  - `user_id` — Unique identifier
  - `plan_type` — Basic, Standard, Premium
  - `device` — TV, Mobile, Tablet, Laptop
  - `watch_hours` — Average monthly watch time
  - `genre` — Most-watched genre
  - `churned` — 1 if user left, 0 if retained

## Data Preparation -
1. Cleaned dataset in **Excel**:
   Removed duplicates & fixed missing values
   Standardized text formatting
   Created new columns:
     - `funnel_stage` —  Paid → Power → Churned
     - `engagement_level` — Low, Medium, High based on watch hours
2. Imported cleaned data into **MySQL Workbench** for analysis.

Both the original and cleaned datasets are available in the [`/Data`](./Data) folder.

## Analysis in SQL -
Queries explored:
- Distribution of churn across plan types
- Churn rate by device type
- Engagement level vs. churn probability
- Most common genre among retained vs churned users

Key Findings:
- **Premium users** had higher retention compared to Basic & Standard.
- **Low engagement** users churned more than high engagement users.
- **Mobile-only users** had the highest churn rate.
- **Drama & Action** genres retained more customers compared to niche genres.

SQL scripts are available in the [`/SQL`](./SQL) folder.

## Power BI Dashboard
Interactive dashboard visuals include:
- Churn % by Plan Type
- Engagement Level Breakdown
- Device-wise Churn Rates
- Genre Popularity among Retained vs. Churned Users
- Monthly watch hours distribution
Power BI files & PDF exports are in the [`/Power BI Dashboard`](./Power%20BI%20Dashboard) folder.

## Conclusion
- Retention is highest among **Premium plan & high-engagement users**.
- Target churn reduction efforts toward **low engagement & mobile-only customers**.
- Focus marketing on popular genres for at-risk segments.


