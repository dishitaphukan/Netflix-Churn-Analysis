# Netflix Customer Churn – SQL Analysis

## Overview
This section covers the SQL exploration of Netflix customer data to uncover patterns and drivers of customer churn.
**Goal:** Segment users, spot churn signals, and generate insights for later Power BI visualization.

## Process
**Step 1:** Started with a raw customer dataset:
  - Included subscription details, watch hours, and churn status.

**Step 2:** Added two columns in Excel *before* importing to MySQL:
  - `Funnel Stage`: 
    - Churned Users
    - Power Users (Premium plan)
    - Paid Users (other plans)
  - `Engagement Level`: 
    - Labeled Low, Medium, or High based on watch hours

**Step 3:** Imported enriched data to MySQL and ran SQL queries to explore:
  - Relationships between churn, plan type, and engagement levels

## Key Findings
- Customers with **low engagement** churned most frequently.
- **Power Users** (Premium plan) showed highest engagement and lowest churn rates.
- **Medium-engagement users** represent an opportunity for conversion through targeted actions.
