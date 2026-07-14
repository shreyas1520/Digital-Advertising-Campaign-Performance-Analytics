/*
====================================================
04_audience_analysis.sql

Project : Digital Advertising Campaign Performance Analytics

Objective:
Analyze audience demographics, interests, purchase
intent, and customer behavior to identify the
highest-value audience segments.

Author : Shreyas Kadam
====================================================
*/

--Section 1 — Age Analysis

--Query 61 — Campaign Count by Age Group
SELECT
    target_audience_age,
    COUNT(*) AS total_campaigns
FROM advertising_campaigns
GROUP BY target_audience_age
ORDER BY total_campaigns DESC;

--Query 62 — Revenue by Age Group
SELECT
    target_audience_age,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY target_audience_age
ORDER BY total_revenue DESC;

--Query 63 — Profit by Age Group
SELECT
    target_audience_age,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY target_audience_age
ORDER BY total_profit DESC;

--Query 64 — Average ROAS by Age Group
SELECT
    target_audience_age,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY target_audience_age
ORDER BY average_roas DESC;

--Query 65 — Average Conversion Rate by Age Group
SELECT
    target_audience_age,
    ROUND(AVG(conversion_rate),2) AS avg_conversion_rate
FROM advertising_campaigns
GROUP BY target_audience_age
ORDER BY avg_conversion_rate DESC;

--Section 2 — Gender Analysis

--Query 66 — Campaign Count by Gender
SELECT
    target_audience_gender,
    COUNT(*) AS campaigns
FROM advertising_campaigns
GROUP BY target_audience_gender;

--Query 67 — Revenue by Gender
SELECT
    target_audience_gender,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY target_audience_gender
ORDER BY revenue DESC;

--Query 68 — Profit by Gender
SELECT
    target_audience_gender,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY target_audience_gender
ORDER BY profit DESC;

--Query 69 — Average CTR by Gender
SELECT
    target_audience_gender,
    ROUND(AVG(ctr),2) AS avg_ctr
FROM advertising_campaigns
GROUP BY target_audience_gender
ORDER BY avg_ctr DESC;

--Query 70 — Average ROAS by Gender
SELECT
    target_audience_gender,
    ROUND(AVG(roas),2) AS avg_roas
FROM advertising_campaigns
GROUP BY target_audience_gender
ORDER BY avg_roas DESC;

--Section 3 — Income Analysis

--Query 71 — Revenue by Income Bracket
SELECT
    income_bracket,
    SUM(revenue) AS total_revenue
FROM advertising_campaigns
GROUP BY income_bracket
ORDER BY total_revenue DESC;

--Query 72 — Profit by Income Bracket
SELECT
    income_bracket,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY income_bracket
ORDER BY total_profit DESC;

--Query 73 — Average ROAS by Income Bracket
SELECT
    income_bracket,
    ROUND(AVG(roas),2) AS average_roas
FROM advertising_campaigns
GROUP BY income_bracket
ORDER BY average_roas DESC;

--Query 74 — Average Conversion Rate by Income Bracket
SELECT
    income_bracket,
    ROUND(AVG(conversion_rate),2) AS avg_conversion_rate
FROM advertising_campaigns
GROUP BY income_bracket
ORDER BY avg_conversion_rate DESC;

--Section 4 — Interest Category Analysis

--Query 75
SELECT
    audience_interest_category,
    COUNT(*) AS campaigns
FROM advertising_campaigns
GROUP BY audience_interest_category
ORDER BY campaigns DESC;

--Query 76
SELECT
    audience_interest_category,
    SUM(revenue) AS revenue
FROM advertising_campaigns
GROUP BY audience_interest_category
ORDER BY revenue DESC;

--Query 77
SELECT
    audience_interest_category,
    SUM(profit) AS profit
FROM advertising_campaigns
GROUP BY audience_interest_category
ORDER BY profit DESC;

--Section 5 — Purchase Intent

--Query 78
SELECT
    purchase_intent_score,
    COUNT(*) AS campaigns
FROM advertising_campaigns
GROUP BY purchase_intent_score
ORDER BY campaigns DESC;

--Query 79
SELECT
    purchase_intent_score,
    ROUND(AVG(conversion_rate),2) AS avg_conversion_rate
FROM advertising_campaigns
GROUP BY purchase_intent_score
ORDER BY avg_conversion_rate DESC;

--Query 80
SELECT
    purchase_intent_score,
    SUM(profit) AS total_profit
FROM advertising_campaigns
GROUP BY purchase_intent_score
ORDER BY total_profit DESC;