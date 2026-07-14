/*
====================================================
03_campaign_analysis.sql

Project : Digital Advertising Campaign Performance Analytics

Objective:
Analyze campaign performance to identify the most
effective campaigns, creatives, objectives, and
advertising strategies.

Author : Shreyas Kadam
====================================================
*/

--Section 1 — Campaign Objectives

-- Query 41 — Number of Campaigns by Objective
SELECT
    campaign_objective,
    COUNT(*) AS total_campaigns
FROM advertising_campaigns
GROUP BY campaign_objective
ORDER BY total_campaigns DESC;

--Query 42 — Revenue by Campaign Objective
SELECT
    campaign_objective,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY campaign_objective
ORDER BY total_revenue DESC;

--Query 43 — Profit by Campaign Objective
SELECT
    campaign_objective,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY campaign_objective
ORDER BY total_profit DESC;

--Query 44 — Average ROAS by Campaign Objective
SELECT
    campaign_objective,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY campaign_objective
ORDER BY average_roas DESC;

--Query 45 — Average CTR by Campaign Objective
SELECT
    campaign_objective,
    ROUND(AVG(ctr),2) AS average_ctr
FROM advertising_campaigns
GROUP BY campaign_objective
ORDER BY average_ctr DESC;

--Section 2 — Creative Analysis

--Query 46 — Best Performing Creative Format
SELECT
    creative_format,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY creative_format
ORDER BY total_revenue DESC;

--Query 47 — Profit by Creative Format
SELECT
    creative_format,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY creative_format
ORDER BY total_profit DESC;

--Query 48 — Average CTR by Creative Format
SELECT
    creative_format,
    ROUND(AVG(ctr),2) AS average_ctr
FROM advertising_campaigns
GROUP BY creative_format
ORDER BY average_ctr DESC;

--Query 49 — Performance by Creative Emotion
SELECT
    creative_emotion,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY creative_emotion
ORDER BY total_profit DESC;

--Query 50 — Performance by Creative Size
SELECT
    creative_size,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY creative_size
ORDER BY total_revenue DESC;

--Section 3 — Ad Placement Analysis

--Query 51
SELECT
    ad_placement,
    COUNT(*) AS campaigns
FROM advertising_campaigns
GROUP BY ad_placement
ORDER BY campaigns DESC;

--Query 52
SELECT
    ad_placement,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY ad_placement
ORDER BY revenue DESC;

--Query 53
SELECT
    ad_placement,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY ad_placement
ORDER BY profit DESC;

--Query 54
SELECT
    ad_placement,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY ad_placement
ORDER BY average_roas DESC;

--Section 4 — Call-To-Action Analysis

--Query 55
SELECT
    has_call_to_action,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY has_call_to_action;

--Query 56
SELECT
    has_call_to_action,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY has_call_to_action;

--Query 57
SELECT
    has_call_to_action,
    ROUND(AVG(conversion_rate),2) AS avg_conversion_rate
FROM advertising_campaigns
GROUP BY has_call_to_action;

--Section 5 — Quality Score Analysis

--Query 58
SELECT
    quality_score,
    COUNT(*) AS campaigns
FROM advertising_campaigns
GROUP BY quality_score
ORDER BY quality_score DESC;

--Query 59
SELECT
    quality_score,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY quality_score
ORDER BY quality_score DESC;

--Query 60
SELECT
    quality_score,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY quality_score
ORDER BY quality_score DESC;


