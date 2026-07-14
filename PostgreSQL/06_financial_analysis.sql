/*
====================================================
06_financial_analysis.sql

Project : Digital Advertising Campaign Performance Analytics

Objective:
Analyze campaign financial performance using key
marketing KPIs such as Revenue, Ad Spend, Profit,
ROAS, CPA, CPC, and CTR.

Author : Shreyas Kadam
====================================================
*/

--Section 1 — Revenue Analysis

--Query 101 — Total Revenue by Year
SELECT
    year,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY year
ORDER BY year;

--Query 102 — Revenue by Month
SELECT
    month,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY month
ORDER BY total_revenue DESC;

--Query 103 — Revenue by Quarter
SELECT
    quarter_name,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY quarter_name
ORDER BY quarter_name;

--Query 104 — Revenue by Weekday
SELECT
    weekday,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY weekday
ORDER BY total_revenue DESC;

--Query 105 — Top 10 Highest Revenue Campaigns
SELECT
    campaign_id,
    platform,
    revenue
FROM advertising_campaigns
ORDER BY revenue DESC
LIMIT 10;

--Section 2 — Profit Analysis

--Query 106
SELECT
    year,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY year;

--Query 107
SELECT
    month,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY month
ORDER BY total_profit DESC;

--Query 108
SELECT
    quarter_name,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY quarter_name
ORDER BY quarter_name;

--Query 109
SELECT
    campaign_id,
    profit
FROM advertising_campaigns
ORDER BY profit DESC
LIMIT 10;

--Query 110
SELECT
    campaign_id,
    profit
FROM advertising_campaigns
ORDER BY profit
LIMIT 10;
Section 3 — Ad Spend Analysis

--Query 111
SELECT
    SUM(ad_spend) AS total_ad_spend
FROM advertising_campaigns;

--Query 112
SELECT
    platform,
    SUM(ad_spend) AS total_spend
FROM advertising_campaigns
GROUP BY platform
ORDER BY total_spend DESC;

--Query 113
SELECT
    budget_tier,
    AVG(ad_spend) AS average_spend
FROM advertising_campaigns
GROUP BY budget_tier
ORDER BY average_spend DESC;

--Section 4 — ROAS Analysis

--Query 114
SELECT
    AVG(roas) AS average_roas
FROM advertising_campaigns;

--Query 115
SELECT
    platform,
    AVG(roas) AS average_roas
FROM advertising_campaigns
GROUP BY platform
ORDER BY average_roas DESC;

--Query 116
SELECT
    campaign_id,
    roas
FROM advertising_campaigns
ORDER BY roas DESC
LIMIT 10;

--Section 5 — CPC / CPA / CTR

--Query 117
SELECT
    AVG(cpc) AS average_cpc,
    AVG(cpa) AS average_cpa,
    AVG(ctr) AS average_ctr
FROM advertising_campaigns;

--Query 118
SELECT
    platform,
    AVG(cpc) AS avg_cpc,
    AVG(cpa) AS avg_cpa,
    AVG(ctr) AS avg_ctr
FROM advertising_campaigns
GROUP BY platform
ORDER BY avg_ctr DESC;

--Section 6 — Financial Ratios

--Query 119
SELECT
    campaign_id,
    ad_spend,
    revenue,
    profit,
    roas
FROM advertising_campaigns
ORDER BY roas DESC
LIMIT 20;

--Query 120
SELECT
    platform,
    SUM(ad_spend) AS spend,
    SUM(revenue) AS revenue,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY platform
ORDER BY profit DESC;