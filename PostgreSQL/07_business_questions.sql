/*
====================================================
07_business_questions.sql

Project : Digital Advertising Campaign Performance Analytics

Objective:
Answer business-focused questions that help
marketing managers make strategic decisions.

Author : Shreyas Kadam
====================================================
*/

-- Budget Allocation

--Query 121 — Which platform generated the highest profit?
SELECT
    platform,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY platform
ORDER BY total_profit DESC;

--Query 122 — Which campaign objective generated the highest revenue?
SELECT
    campaign_objective,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY campaign_objective
ORDER BY total_revenue DESC;


--Query 123 — Which budget tier generated the highest ROAS?
SELECT
    budget_tier,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY budget_tier
ORDER BY average_roas DESC;


--Query 124 — Which industry generated the highest profit?
SELECT
    industry_vertical,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY industry_vertical
ORDER BY total_profit DESC;

--Query 125 — Which platform deserves more budget?
SELECT
    platform,
    SUM(ad_spend) AS spend,
    SUM(revenue) AS revenue,
    SUM(profit) AS profit,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY platform
ORDER BY average_roas DESC;

--Customer Analysis

--Query 126 — Which age group generated the highest revenue?
SELECT
    target_audience_age,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY target_audience_age
ORDER BY revenue DESC;

--Query 127 — Which gender generated the highest profit?
SELECT
    target_audience_gender,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY target_audience_gender
ORDER BY profit DESC;


--Query 128 — Which income group converts the best?
SELECT
    income_bracket,
    ROUND(AVG(conversion_rate),2) AS conversion_rate
FROM advertising_campaigns
GROUP BY income_bracket
ORDER BY conversion_rate DESC;

--Query 129 — Which interest category generated the highest ROAS?
SELECT
    audience_interest_category,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY audience_interest_category
ORDER BY average_roas DESC;

--Query 130 — Which purchase intent performs best?
SELECT
    purchase_intent_score,
    ROUND(AVG(conversion_rate),2) AS conversion_rate
FROM advertising_campaigns
GROUP BY purchase_intent_score
ORDER BY conversion_rate DESC;

--Campaign Optimization

--Query 131 — Which campaigns lost money?
SELECT
    campaign_id,
    platform,
    profit
FROM advertising_campaigns
WHERE profit < 0
ORDER BY profit;

--Query 132 — Top 10 profitable campaigns
SELECT
    campaign_id,
    platform,
    profit
FROM advertising_campaigns
ORDER BY profit DESC
LIMIT 10;

--Query 133 — Which campaigns have the highest CTR?
SELECT
    campaign_id,
    ctr
FROM advertising_campaigns
ORDER BY ctr DESC
LIMIT 10;

--Query 134 — Which campaigns have the highest conversion rate?
SELECT
    campaign_id,
    conversion_rate
FROM advertising_campaigns
ORDER BY conversion_rate DESC
LIMIT 10;

--Query 135 — Campaigns with Quality Score ≥ 9
SELECT
    campaign_id,
    quality_score,
    profit
FROM advertising_campaigns
WHERE quality_score >= 9;

--Time Analysis

--Query 136 — Best month for revenue
SELECT
    month,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY month
ORDER BY revenue DESC;

--Query 137 — Best weekday for profit
SELECT
    weekday,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY weekday
ORDER BY profit DESC;

--Query 138 — Best quarter by ROAS
SELECT
    quarter_name,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY quarter_name
ORDER BY average_roas DESC;

--Marketing Strategy

--Query 139 — Does retargeting improve ROAS?
SELECT
    retargeting_flag,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY retargeting_flag;

--Query 140 — Does Call-To-Action improve conversions?
SELECT
    has_call_to_action,
    ROUND(AVG(conversion_rate),2) AS average_conversion_rate
FROM advertising_campaigns
GROUP BY has_call_to_action;

--Executive Summary

--Query 141 — Platform Performance Summary
SELECT
    platform,
    SUM(ad_spend) AS spend,
    SUM(revenue) AS revenue,
    SUM(profit) AS profit,
    ROUND(AVG(roas),2) AS roas
FROM advertising_campaigns
GROUP BY platform
ORDER BY profit DESC;


--Query 142 — Industry Performance Summary
SELECT
    industry_vertical,
    SUM(revenue) AS revenue,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY industry_vertical
ORDER BY profit DESC;


--Query 143 — Device Performance Summary
SELECT
    device_type,
    SUM(revenue) AS revenue,
    SUM(profit) AS profit,
    ROUND(AVG(roas),2) AS roas
FROM advertising_campaigns
GROUP BY device_type
ORDER BY profit DESC;


--Query 144 — Campaign Objective Summary
SELECT
    campaign_objective,
    SUM(revenue) AS revenue,
    SUM(profit) AS profit,
    ROUND(AVG(roas),2) AS roas
FROM advertising_campaigns
GROUP BY campaign_objective
ORDER BY profit DESC;

--Query 145 — Overall Marketing Performance
SELECT
    COUNT(*) AS total_campaigns,
    SUM(ad_spend) AS total_spend,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    ROUND(AVG(roas), 2) AS average_roas,
    ROUND(AVG(ctr), 2) AS average_ctr,
    ROUND(AVG(conversion_rate), 2) AS average_conversion_rate
FROM advertising_campaigns;

