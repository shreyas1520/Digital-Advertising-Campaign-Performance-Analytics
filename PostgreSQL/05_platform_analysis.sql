/*
====================================================
05_platform_analysis.sql

Project : Digital Advertising Campaign Performance Analytics

Objective:
Analyze advertising platform, device type,
operating system, budget allocation, and campaign
performance across marketing channels.

Author : Shreyas Kadam
====================================================
*/

--Section 1 — Platform Analysis

--Query 81 — Campaign Count by Platform
SELECT
    platform,
    COUNT(*) AS total_campaigns
FROM advertising_campaigns
GROUP BY platform
ORDER BY total_campaigns DESC;

--Query 82 — Revenue by Platform
SELECT
    platform,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY platform
ORDER BY total_revenue DESC;

--Query 83 — Profit by Platform
SELECT
    platform,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY platform
ORDER BY total_profit DESC;

--Query 84 — Average ROAS by Platform
SELECT
    platform,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY platform
ORDER BY average_roas DESC;

--Query 85 — Average CTR by Platform
SELECT
    platform,
    ROUND(AVG(ctr),2) AS average_ctr
FROM advertising_campaigns
GROUP BY platform
ORDER BY average_ctr DESC;

--Section 2 — Device Analysis

--Query 86 — Campaign Count by Device
SELECT
    device_type,
    COUNT(*) AS campaigns
FROM advertising_campaigns
GROUP BY device_type
ORDER BY campaigns DESC;

--Query 87 — Revenue by Device
SELECT
    device_type,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY device_type
ORDER BY revenue DESC;

--Query 88 — Profit by Device
SELECT
    device_type,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY device_type
ORDER BY profit DESC;

--Query 89 — Average Conversion Rate by Device
SELECT
    device_type,
    ROUND(AVG(conversion_rate),2) AS avg_conversion_rate
FROM advertising_campaigns
GROUP BY device_type
ORDER BY avg_conversion_rate DESC;

--Query 90 — Average ROAS by Device
SELECT
    device_type,
    ROUND(AVG(roas),2) AS avg_roas
FROM advertising_campaigns
GROUP BY device_type
ORDER BY avg_roas DESC;

--Section 3 — Operating System Analysis

--Query 91
SELECT
    operating_system,
    COUNT(*) AS campaigns
FROM advertising_campaigns
GROUP BY operating_system
ORDER BY campaigns DESC;

--Query 92
SELECT
    operating_system,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY operating_system
ORDER BY revenue DESC;

--Query 93
SELECT
    operating_system,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY operating_system
ORDER BY profit DESC;

--Section 4 — Budget Tier Analysis

--Query 94
SELECT
    budget_tier,
    COUNT(*) AS campaigns
FROM advertising_campaigns
GROUP BY budget_tier
ORDER BY campaigns DESC;

--Query 95
SELECT
    budget_tier,
    SUM(ad_spend) AS total_spend
FROM advertising_campaigns
GROUP BY budget_tier
ORDER BY total_spend DESC;

--Query 96
SELECT
    budget_tier,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY budget_tier
ORDER BY revenue DESC;

--Query 97
SELECT
    budget_tier,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY budget_tier
ORDER BY profit DESC;

--Query 98
SELECT
    budget_tier,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY budget_tier
ORDER BY average_roas DESC;

--Section 5 — Cross Analysis

--Query 99 — Platform vs Device Performance
SELECT
    platform,
    device_type,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY platform, device_type
ORDER BY revenue DESC;

--Query 100 — Platform vs Budget Tier
SELECT
    platform,
    budget_tier,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY platform, budget_tier
ORDER BY profit DESC;


