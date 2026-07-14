# Marketing Performance Analytics Dashboard

## Overview

The **Marketing Performance Analytics Dashboard** is an end-to-end business intelligence project developed in **Microsoft Power BI** to analyze marketing performance across campaigns, channels, audiences, financial outcomes, digital engagement, creative strategies, and technology dimensions.

The project transforms marketing data into an interactive **8-page analytical dashboard suite**, allowing users to evaluate campaign effectiveness, advertising efficiency, customer engagement, profitability, and conversion performance from multiple business perspectives.

The dashboard includes interactive filtering, DAX-based performance metrics, page-specific visual themes, and a collapsible navigation sidebar for a more application-like user experience.

---

## Project Objectives

The main objectives of this project are to:

- Monitor overall marketing performance through executive KPIs.
- Evaluate campaign-level performance and efficiency.
- Compare marketing channels and platforms.
- Analyze audience segments and purchase behavior.
- Measure revenue, advertising spend, profit, ROI, and ROAS.
- Understand digital engagement and user experience.
- Evaluate the effectiveness of creative formats, emotions, and calls to action.
- Compare performance across devices and operating systems.
- Build an interactive and professionally designed Power BI reporting solution.

---

## Dashboard Pages

### 1. Executive Dashboard

Provides a high-level overview of overall marketing performance.

**Key KPIs:**

- Total Revenue
- Total Ad Spend
- Total Profit
- ROAS
- CTR
- Conversion Rate

**Key Visuals:**

- Revenue vs Ad Spend Trend
- Revenue by Platform
- Profit by Campaign Objective
- ROAS by Platform

---

### 2. Campaign Performance Dashboard

Analyzes the effectiveness and financial performance of individual marketing campaigns.

**Key KPIs:**

- Campaign Count
- Total Revenue
- Total Profit
- Total Conversions
- ROAS
- CPA

**Key Visuals:**

- Campaign Revenue vs Ad Spend
- ROAS by Campaign Objective
- Top Campaigns by Revenue
- Campaign Performance Detail Table

---

### 3. Channel Performance Dashboard

Compares marketing performance across advertising platforms and channels.

**Key KPIs:**

- Total Ad Spend
- Total Revenue
- ROAS
- CTR
- CPC
- CPA

**Key Visuals:**

- Revenue vs Ad Spend by Platform
- ROAS by Platform
- CTR by Platform
- Conversion Rate by Platform

---

### 4. Audience Insights Dashboard

Explores how different audience segments contribute to marketing and conversion performance.

**Key KPIs:**

- Total Revenue
- Total Conversions
- Conversion Rate
- ROAS
- CTR
- Total Profit

**Key Visuals:**

- Revenue by Target Audience Age
- Conversion Rate by Target Audience Age
- Revenue by Target Audience Gender
- Conversion Rate by Purchase Intent

---

### 5. Financial Performance Dashboard

Focuses on marketing profitability, return on investment, and financial efficiency.

**Key KPIs:**

- Total Revenue
- Total Ad Spend
- Total Profit
- Profit Margin
- ROI
- ROAS

**Key Visuals:**

- Revenue, Ad Spend, and Profit Trend
- Profit by Platform
- ROI by Platform
- Profit Margin by Campaign Objective

---

### 6. Engagement & Digital Experience Dashboard

Analyzes user engagement and digital interaction with marketing campaigns.

**Key KPIs:**

- Total Impressions
- Total Clicks
- CTR
- Conversion Rate
- Average Session Duration
- Average Bounce Rate

**Key Visuals:**

- Impressions and Clicks by Platform
- Bounce Rate by Platform
- Average Session Duration by Device Type
- Conversion Rate by Device Type

---

### 7. Creative Performance Dashboard

Evaluates how creative strategies influence engagement, revenue, and conversions.

**Key KPIs:**

- Total Revenue
- Total Ad Spend
- ROAS
- CTR
- Conversion Rate
- Total Conversions

**Key Visuals:**

- Revenue by Creative Format
- ROAS by Creative Format
- CTR by Creative Emotion
- Conversion Rate by CTA Presence

---

### 8. Technology & Device Performance Dashboard

Analyzes marketing performance across devices and operating systems.

**Key KPIs:**

- Total Impressions
- Total Clicks
- CTR
- Conversion Rate
- Total Revenue
- ROAS

**Key Visuals:**

- Revenue by Device Type
- Conversion Rate by Device Type
- Revenue by Operating System
- ROAS by Operating System

---

## Key Metrics and DAX Measures

The dashboard uses reusable DAX measures to calculate core marketing and financial KPIs.

```DAX
Total Revenue =
SUM('Marketing Data'[revenue])

Total Ad Spend =
SUM('Marketing Data'[ad_spend])

Total Profit =
[Total Revenue] - [Total Ad Spend]

Total Impressions =
SUM('Marketing Data'[impressions])

Total Clicks =
SUM('Marketing Data'[clicks])

Total Conversions =
SUM('Marketing Data'[conversions])

Campaign Count =
DISTINCTCOUNT('Marketing Data'[campaign_id])

CTR % =
DIVIDE(
    [Total Clicks],
    [Total Impressions],
    0
)

Conversion Rate % =
DIVIDE(
    [Total Conversions],
    [Total Clicks],
    0
)

ROAS =
DIVIDE(
    [Total Revenue],
    [Total Ad Spend],
    0
)

ROI % =
DIVIDE(
    [Total Profit],
    [Total Ad Spend],
    0
)

Profit Margin % =
DIVIDE(
    [Total Profit],
    [Total Revenue],
    0
)

CPC =
DIVIDE(
    [Total Ad Spend],
    [Total Clicks],
    0
)

CPA =
DIVIDE(
    [Total Ad Spend],
    [Total Conversions],
    0
)
