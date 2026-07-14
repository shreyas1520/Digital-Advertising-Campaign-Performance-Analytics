/*
====================================================
02_basic_queries.sql

Project : Digital Advertising Campaign Performance Analytics

Objective:
Perform basic SQL analysis on advertising campaign data.

Author : Shreyas Kadam
====================================================
*/

-- Query 1 — View all records
SELECT *
FROM advertising_campaigns;

-- Query 2 — View first 10 records
SELECT *
FROM advertising_campaigns
LIMIT 10;

--Query 3Display selected columns
SELECT
campaign_id,
platform,
campaign_objective,
revenue,
profit
FROM advertising_campaigns;

--Query 4 — Unique Platforms
SELECT DISTINCT platform
FROM advertising_campaigns;

--Query 5 — Unique Campaign Objectives
SELECT DISTINCT campaign_objective
FROM advertising_campaigns;

--Query 6 — Unique Device Types
SELECT DISTINCT device_type
FROM advertising_campaigns;

--Query 7 — Unique Operating Systems
SELECT DISTINCT operating_system
FROM advertising_campaigns;

--Query 8 — Total Number of Campaigns
SELECT COUNT(*) AS total_campaigns
FROM advertising_campaigns;

--Query 9 — Total Revenue
SELECT SUM(revenue) AS total_revenue
FROM advertising_campaigns;

--Query 10 — Total Advertising Spend
SELECT SUM(ad_spend) AS total_ad_spend
FROM advertising_campaigns;

--Query 11 — Total Profit
SELECT SUM(profit) AS total_profit
FROM advertising_campaigns;

--Query 12 — Average Revenue
SELECT AVG(revenue) AS average_revenue
FROM advertising_campaigns;

--Query 13 — Average Profit
SELECT AVG(profit) AS average_profit
FROM advertising_campaigns;

--Query 14 — Average ROAS
SELECT AVG(roas) AS average_roas
FROM advertising_campaigns;

--Query 15 — Average CTR
SELECT AVG(ctr) AS average_ctr
FROM advertising_campaigns;

--Query 16 — Maximum Revenue
SELECT MAX(revenue) AS highest_revenue
FROM advertising_campaigns;

--Query 17 — Minimum Revenue
SELECT MIN(revenue) AS lowest_revenue
FROM advertising_campaigns;

--Query 18 — Maximum Profit
SELECT MAX(profit) AS highest_profit
FROM advertising_campaigns;

--Query 19 — Minimum Profit
SELECT MIN(profit) AS lowest_profit
FROM advertising_campaigns;

--Query 20 — Highest ROAS
SELECT MAX(roas) AS highest_roas
FROM advertising_campaigns;


--Section 2 — WHERE Clause
--Query 21 — Campaigns with Revenue greater than 50,000
SELECT *
FROM advertising_campaigns
WHERE revenue > 50000;

--Query 22 — Campaigns with Profit greater than 20,000
SELECT *
FROM advertising_campaigns
WHERE profit > 20000;

--Query 23 — Campaigns on Google Ads
SELECT *
FROM advertising_campaigns
WHERE platform = 'Google Ads';

--Query 24 — Mobile Device Campaigns
SELECT *
FROM advertising_campaigns
WHERE device_type = 'Mobile';

--Query 25 — Campaigns with High Purchase Intent
SELECT *
FROM advertising_campaigns
WHERE purchase_intent_score = 'High';

--Query 26 — Campaigns with Quality Score ≥ 8
SELECT *
FROM advertising_campaigns
WHERE quality_score >= 8;

--Query 27 — Retargeting Campaigns
SELECT *
FROM advertising_campaigns
WHERE retargeting_flag = TRUE;

--Query 28 — Campaigns Having CTA
SELECT *
FROM advertising_campaigns
WHERE has_call_to_action = TRUE;

--Query 29 — Finance Industry Campaigns
SELECT *
FROM advertising_campaigns
WHERE industry_vertical = 'Finance';

--Query 30 — Premium Budget Campaigns
SELECT *
FROM advertising_campaigns
WHERE budget_tier = 'High';


--Section 3 — ORDER BY

--Query 31 — Top Revenue Campaigns
SELECT campaign_id, platform, revenue
FROM advertising_campaigns
ORDER BY revenue DESC
LIMIT 10;

--Query 32 — Highest Profit Campaigns
SELECT campaign_id, profit
FROM advertising_campaigns
ORDER BY profit DESC
LIMIT 10;

--Query 33 — Lowest Profit Campaigns
SELECT campaign_id, profit
FROM advertising_campaigns
ORDER BY profit ASC
LIMIT 10;

--Query 34 — Highest ROAS
SELECT campaign_id, roas
FROM advertising_campaigns
ORDER BY roas DESC
LIMIT 10;

--Query 35 — Highest CTR
SELECT campaign_id, ctr
FROM advertising_campaigns
ORDER BY ctr DESC
LIMIT 10;

--Section 4 — GROUP BY

--Query 36 — Revenue by Platform
SELECT
platform,
SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY platform
ORDER BY total_revenue DESC;

--Query 37 — Profit by Platform
SELECT
platform,
SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY platform
ORDER BY total_profit DESC;

--Query 38 — Campaign Count by Platform
SELECT
platform,
COUNT(*) AS total_campaigns
FROM advertising_campaigns
GROUP BY platform
ORDER BY total_campaigns DESC;

--Query 39 — Average ROAS by Platform
SELECT
platform,
AVG(roas) AS average_roas
FROM advertising_campaigns
GROUP BY platform
ORDER BY average_roas DESC;

--Query 40 — Average CTR by Platform
SELECT
platform,
AVG(ctr) AS average_ctr
FROM advertising_campaigns
GROUP BY platform
ORDER BY average_ctr DESC;

