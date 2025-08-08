-- create and select the database
-- this creates a database named 'funnel' and switches to it
create database funnel;
use funnel;

-- preview the table to confirm data load
-- 'netflix_users' contains customer details, watch history, engagement levels, and churn info
select * from netflix_users;

-- 1. find the total number of users
-- this gives a quick overview of dataset size
select count(*) as total_users
from netflix_users;

-- 2. overall churn rate
-- calculates how many users churned, and their percentage of total users
select
    count(*) as total_users,
    sum(case when churned = 1 then 1 else 0 end) as churned_users,
    round(100.0 * sum(case when churned = 1 then 1 else 0 end) / count(*), 2) as churn_rate_percent
from netflix_users;

-- 3. churn rate by funnel stage
-- compares churn rates across different stages (e.g., churned user, paid user, power user)
select 
    funnel_stage,
    count(*) as total_users,
    sum(case when churned = 1 then 1 else 0 end) as churned_users,
    round(100.0 * sum(case when churned = 1 then 1 else 0 end) / count(*), 2) as churn_rate_percent
from netflix_users
group by funnel_stage;

-- 4. churn rate by device type
-- helps identify if churn is higher for users on mobile, desktop, tv, etc.
select
    device,
    count(*) as total_users,
    sum(case when churned = 1 then 1 else 0 end) as churned_users,
    round(100.0 * sum(case when churned = 1 then 1 else 0 end) / count(*), 2) as churn_rate_percentage
from netflix_users
group by device;

-- 5. average watch time by favourite genre
-- finds the average monthly watch hours for each genre, showing which genres have higher engagement
select 
    favorite_genre,
    round(avg(watch_hours), 2) as avg_watch_time
from netflix_users
group by favorite_genre
order by avg_watch_time desc;

-- 6. churn rate by engagement level
-- compares churn rates for low, medium, and high engagement users
select 
    engagement_level,
    count(*) as total_users,
    sum(case when churned = 1 then 1 else 0 end) as churned_users,
    round(100.0 * sum(case when churned = 1 then 1 else 0 end) / count(*), 2) as churn_rate_percentage
from netflix_users
group by engagement_level
order by churn_rate_percentage desc;

-- 7. churn analysis for a specific engagement group with age breakdown
-- here, we filter for 'low' engagement and compare churn rates by age to see where we can improve
select 
    engagement_level,
    age,
    count(*) as total_users,
    sum(case when churned = 1 then 1 else 0 end) as churned_users,
    round(100.0 * sum(case when churned = 1 then 1 else 0 end) / count(*), 2) as churn_rate_percentage
from netflix_users
where engagement_level = 'Low'
group by engagement_level, age
order by churn_rate_percentage desc;
