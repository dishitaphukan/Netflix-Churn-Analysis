# Netflix-Churn-Analysis Using SQL & Power BI : 
Analyzed Netflix customer churn data to identify trends in subscription types, engagement, and retention. SQL was used for data querying, Excel for feature creation, and Power BI for interactive dashboards. This project analyzes customer churn for a fictional Netflix dataset to identify patterns in engagement, device usage, and subscription plans. The goal is to uncover insights that can help improve customer retention.

**Tools Used:**  
- Kaggle (dataset)
- MySQL (data querying)  
- Excel (data cleaning & column creation)  
- Power BI (dashboard visualization)  

## 📂 Dataset -
- **Source:** Kaggle Netflix Customer Churn Dataset (1,000+ records)
- **Key Columns:**
  - `user_id` — Unique identifier
  - `plan_type` — Basic, Standard, Premium
  - `device` — TV, Mobile, Tablet, Laptop
  - `watch_hours` — Average monthly watch time
  - `genre` — Most-watched genre
  - `churned` — 1 if user left, 0 if retained

## Data Preparation -
1. Cleaned dataset in **Excel**:
   - Removed duplicates & fixed missing values
   - Standardized text formatting
   - Created new columns:
     - `funnel_stage` —  Paid → Power → Churned
     - `engagement_level` — Low, Medium, High based on watch hours
2. Imported cleaned data into **MySQL** for analysis


