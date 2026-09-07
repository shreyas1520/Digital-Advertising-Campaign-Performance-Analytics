# Digital Advertising Campaign Performance Analytics

An end-to-end digital marketing analytics project that transforms **10,000 advertising campaign records across 45 variables** into actionable business insights using **Python, Pandas, PostgreSQL, SQL, Power BI, DAX, and Power Query**.

The project analyzes campaign performance, advertising platforms, audience behavior, financial outcomes, digital engagement, creative attributes, and technology/device performance through an interactive **8-page Power BI dashboard suite**.

---

## Executive Summary

This project analyzes digital advertising campaign data to evaluate **revenue generation, advertising efficiency, profitability, audience performance, engagement, conversion behavior, creative performance, and platform-level outcomes**.

The analysis follows an end-to-end workflow from data preparation and validation to SQL-based business analysis and interactive Power BI reporting.

### Key Findings

- Generated **$284.16M in Total Revenue** across 10,000 campaign records.
- Total Advertising Spend was **$43.46M**, resulting in **$240.70M in Total Profit** based on the project's KPI calculation.
- **Google Ads generated the highest total revenue at approximately $97.85M** and the highest total profit at approximately $79.84M.
- **TikTok recorded the highest average ROAS at 10.85**, followed by Facebook at 10.01.
- **2,169 campaigns were loss-making**, representing **21.69%** of the dataset.
- **Lead Generation** generated the highest campaign-objective revenue at approximately **$109.94M**.
- The **25–34 age group** generated the highest audience revenue at approximately **$87.90M**.
- **Desktop** generated the highest device-level revenue at approximately **$176.99M**.

### Business Takeaway

The analysis shows that **scale and advertising efficiency can differ across platforms**.

Google Ads generated the highest revenue and profit, while TikTok achieved the highest average ROAS. Therefore, advertising performance should be evaluated using multiple KPIs such as **revenue, profit, advertising spend, ROAS, CPA, CTR, and conversion rate** rather than relying on a single metric.

---

## Project Objectives

The main objectives of this project are to:

- Monitor overall marketing performance through executive KPIs.
- Evaluate campaign-level performance and efficiency.
- Compare advertising platforms and channels.
- Analyze audience segments and purchase behavior.
- Measure revenue, advertising spend, profit, ROI, and ROAS.
- Analyze digital engagement and user experience.
- Evaluate performance across creative formats, emotions, and CTA presence.
- Compare performance across devices and operating systems.
- Identify high-performing and loss-making campaigns.
- Identify patterns that may support advertising budget and campaign optimization decisions.
- Convert analytical findings into data-driven marketing recommendations.
- Build an interactive and professionally designed Power BI reporting solution.

---

## Dataset

The dataset contains **10,000 advertising campaign records and 45 columns**.

Each record represents an advertising campaign observation containing information related to campaign characteristics, advertising platforms, audience attributes, creative attributes, engagement metrics, financial metrics, and campaign performance.

### Major Data Categories

- Campaign information
- Campaign objectives
- Advertising platforms
- Ad placements
- Target audience characteristics
- Creative attributes
- Device information
- Operating systems
- Campaign dates
- Impressions
- Clicks
- Conversions
- Advertising spend
- Revenue
- Profit
- Marketing KPIs

### Dataset Scale

| Metric | Value |
|---|---:|
| Campaign Records | 10,000 |
| Variables | 45 |
| Total Revenue | $284.16M |
| Total Ad Spend | $43.46M |
| Total Profit | $240.70M |
| Total Conversions | 656K |
| Total Impressions | 705M |
| Total Clicks | 15M |

---

## Technology Stack

| Technology | Purpose |
|---|---|
| **Python** | Data profiling, cleaning, validation, feature engineering and EDA |
| **Pandas** | Data manipulation and analysis |
| **PostgreSQL** | Relational database storage |
| **SQL** | Structured business and marketing analysis |
| **Power Query** | Data transformation and preparation |
| **Power BI** | Interactive dashboard development |
| **DAX** | Dynamic KPI and analytical measures |
| **Jupyter Notebook** | Analysis and documentation |
| **Git & GitHub** | Version control and project hosting |

---

## Role of Each Technology

### Python / Pandas

Used for data profiling, data cleaning, validation, feature engineering, exploratory data analysis, and identifying initial patterns.

### PostgreSQL

Used as the relational database layer to store the prepared marketing dataset in a structured format.

### SQL

Used to perform structured business analysis across campaign objectives, platforms, audiences, devices, financial performance, and other marketing dimensions.

### Power Query

Used for data transformation and preparation within Power BI.

### DAX

Used to create reusable and dynamic marketing and financial KPIs that respond to dashboard filters.

### Power BI

Used as the final business intelligence layer to create interactive reporting and communicate analytical findings.

---


## Data Cleaning & Validation

The dataset was validated using Python and Pandas before performing the business analysis.

### Validation Checks

- Missing-value validation
- Duplicate-record validation
- Data-type validation
- Date validation
- Clicks greater than impressions check
- Conversions greater than clicks check
- Negative revenue validation
- Negative advertising-spend validation
- Advertising-spend outlier analysis

### Validation Results

- **0 missing values**
- **0 duplicate records**
- **0 cases where clicks exceeded impressions**
- **0 cases where conversions exceeded clicks**
- **0 negative revenue records**
- **0 negative advertising-spend records**

### Negative Profit Analysis

Negative profit was treated as a valid business outcome rather than automatically classified as a data-quality issue.

**2,169 campaigns**, representing **21.69% of the dataset**, recorded negative profit.

These campaigns were retained for further analysis because loss-making campaigns can provide useful information for identifying potential optimization opportunities.

### Outlier Analysis

An IQR-based analysis of advertising spend identified **955 potential outlier records**.

These records were not automatically removed because high advertising spend can represent legitimate high-budget campaigns. The observations were retained for further investigation.

---

## Exploratory Data Analysis

Exploratory analysis was performed across multiple dimensions to identify patterns and performance differences.

### Analytical Areas

- Campaign performance
- Platform performance
- Campaign objectives
- Audience characteristics
- Purchase intent
- Financial performance
- Impressions and clicks
- Conversion performance
- Device performance
- Operating system performance
- Creative formats
- Creative emotions
- CTA presence
- Engagement metrics
- Advertising spend

The EDA stage was used to identify trends, performance differences, potential outliers, and areas requiring deeper business analysis.

---

# Power BI Dashboard Analysis

The Power BI solution contains **8 analytical dashboards** covering different aspects of digital advertising performance.

## 1. Executive Dashboard

Provides a high-level overview of overall marketing performance.

### Key KPIs

- Total Revenue
- Total Ad Spend
- Total Profit
- ROAS
- CTR
- Conversion Rate

### Key Analysis

- Revenue vs Ad Spend Trend
- Revenue by Platform
- Profit by Campaign Objective
- ROAS by Platform

### Business Focus

Provides an executive-level view of marketing scale, profitability, platform performance, and advertising efficiency.

---

## 2. Campaign Performance Dashboard

Analyzes individual campaign performance and campaign-objective efficiency.

### Key KPIs

- Campaign Count
- Total Revenue
- Total Profit
- Total Conversions
- ROAS
- CPA

### Key Analysis

- Campaign Revenue vs Ad Spend
- ROAS by Campaign Objective
- Top Campaigns by Revenue
- Campaign Performance Detail Table

### Business Focus

Helps identify high-performing campaigns, campaign-level revenue patterns, and differences in performance across campaign objectives.

---

## 3. Channel Performance Dashboard

Compares advertising performance across platforms.

### Key KPIs

- Total Ad Spend
- Total Revenue
- ROAS
- CTR
- CPC
- CPA

### Key Analysis

- Revenue vs Ad Spend by Platform
- ROAS by Platform
- CTR by Platform
- Conversion Rate by Platform

### Business Focus

Provides a comparative view of platform scale, engagement, conversion performance, and advertising efficiency.

---

## 4. Audience Insights Dashboard

Analyzes performance across audience characteristics.

### Key KPIs

- Total Revenue
- Total Conversions
- Conversion Rate
- ROAS
- CTR
- Total Profit

### Key Analysis

- Revenue by Target Audience Age
- Conversion Rate by Target Audience Age
- Revenue by Target Audience Gender
- Conversion Rate by Purchase Intent

### Business Focus

Identifies differences in revenue and conversion performance across audience segments and purchase-intent levels.

---

## 5. Financial Performance Dashboard

Focuses on marketing profitability and financial efficiency.

### Key KPIs

- Total Revenue
- Total Ad Spend
- Total Profit
- Profit Margin
- ROI
- ROAS

### Key Analysis

- Revenue, Ad Spend and Profit Trend
- Profit by Platform
- ROI by Campaign Objective
- Profit Margin by Platform

### Business Focus

Evaluates marketing profitability, return on advertising spend, and financial efficiency.

---

## 6. Engagement & Digital Experience Dashboard

Analyzes digital engagement and user interaction.

### Key KPIs

- Total Impressions
- Total Clicks
- CTR
- Conversion Rate
- Average Session Duration
- Average Bounce Rate

### Key Analysis

- Impressions & Clicks Trend
- Bounce Rate by Platform
- Average Session Duration by Platform
- Conversion Rate by Device Type

### Business Focus

Examines digital engagement and conversion behavior across platforms and device types.

---

## 7. Creative Performance Dashboard

Analyzes performance across different creative attributes.

### Key KPIs

- Total Revenue
- Total Ad Spend
- ROAS
- CTR
- Conversion Rate
- Total Conversions

### Key Analysis

- Revenue by Creative Format
- ROAS by Creative Format
- CTR by Creative Emotion
- Conversion Rate by CTA Presence

### Business Focus

Analyzes engagement, revenue, and conversion performance across different creative characteristics.

---

## 8. Technology & Device Performance Dashboard

Analyzes campaign performance across devices and operating systems.

### Key KPIs

- Total Impressions
- Total Clicks
- CTR
- Conversion Rate
- Total Revenue
- ROAS

### Key Analysis

- Revenue by Device Type
- Conversion Rate by Device Type
- Revenue by Operating System
- ROAS by Operating System

### Business Focus

Identifies differences in marketing performance across devices and operating systems.

---

# Key Metrics & DAX Measures

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
```

### Core Marketing KPIs

- **CTR** — Click-through rate
- **CPC** — Cost per click
- **CPA** — Cost per acquisition
- **Conversion Rate** — Conversions relative to clicks
- **ROAS** — Revenue generated per unit of advertising spend
- **ROI** — Profit relative to advertising spend
- **Profit Margin** — Profit relative to revenue

---

# SQL Analytics

PostgreSQL and SQL were used to perform structured business analysis across the marketing dataset.

### SQL Techniques Used

- `GROUP BY`
- Aggregate functions
- `CASE WHEN`
- Common Table Expressions (CTEs)
- Window Functions
- Ranking
- Conditional aggregation
- Percentage calculations
- Platform-level analysis
- Campaign-level analysis
- Audience analysis
- Financial analysis
- Performance comparison

### Business Questions Analyzed

- Which platforms generate the highest revenue?
- Which platforms achieve the strongest ROAS?
- Which campaign objectives generate the highest revenue?
- Which audience segments contribute the most revenue?
- Which platforms generate the highest profit?
- Which campaigns are loss-making?
- How does advertising spend compare with revenue?
- Which dimensions show potential performance differences?

---

# Key Business Insights

## 1. Google Ads Generated the Highest Revenue and Profit

Google Ads generated approximately **$97.85M in revenue** and **$79.84M in profit**, making it the strongest platform in terms of absolute revenue and profit within the observed dataset.

However, Google Ads did not have the highest ROAS.

---

## 2. TikTok Achieved the Highest Average ROAS

TikTok recorded the highest average ROAS at **10.85**, followed by Facebook at **10.01**.

This indicates stronger average advertising efficiency relative to spend for TikTok within the observed dataset.

However, the highest ROAS does not automatically mean that all advertising budget should be shifted to TikTok.

Platform scale, revenue, profit, advertising spend, campaign volume, and other KPIs should also be considered.

---

## 3. 21.69% of Campaigns Were Loss-Making

**2,169 out of 10,000 campaigns** recorded negative profit, representing **21.69%** of the dataset.

These campaigns provide an opportunity for deeper investigation based on:

- Platform
- Campaign objective
- Audience
- Creative attributes
- CPC
- CPA
- CTR
- Conversion rate
- Advertising spend

---

## 4. Lead Generation Generated the Highest Objective-Level Revenue

**Lead Generation** generated approximately **$109.94M in revenue**, followed by **Conversions** at approximately **$100.47M**.

This indicates that campaign objectives differed substantially in their contribution to observed revenue.

---

## 5. The 25–34 Audience Generated the Highest Revenue

The **25–34 age group** generated approximately **$87.90M in revenue**.

This finding represents an observed dataset-level association and should not be interpreted as evidence that age itself causes higher revenue.

---

## 6. Desktop Generated the Highest Device-Level Revenue

Desktop generated approximately **$176.99M in revenue**, followed by Mobile at approximately **$86.86M**.

This indicates a substantial difference in observed revenue contribution across device types, while further analysis would be required to understand the underlying drivers.

---

## 7. Marketing Scale and Efficiency Were Not the Same

The analysis showed:

| Performance Dimension | Highest-Performing Platform |
|---|---|
| Total Revenue | Google Ads |
| Total Profit | Google Ads |
| Average ROAS | TikTok |

This demonstrates why marketing performance should be evaluated using a combination of **scale, profitability, and efficiency metrics** rather than a single KPI.

---

# Data-Driven Recommendations

## 1. Evaluate Platforms Using Multiple KPIs

Use revenue, profit, advertising spend, ROAS, CPA, CTR, and conversion rate together when evaluating advertising platforms instead of relying on a single performance metric.

## 2. Investigate Loss-Making Campaigns

Analyze the **21.69% loss-making campaigns** to identify recurring performance patterns associated with high costs, low conversion rates, audience targeting, campaign objectives, or creative performance.

## 3. Compare Scale and Efficiency Before Budget Allocation

The difference between Google Ads' revenue performance and TikTok's ROAS demonstrates the importance of evaluating both **scale and efficiency** before making budget allocation decisions.

## 4. Investigate Audience Performance

Further analyze audience segments by combining revenue, conversion rate, ROAS, CPA, and campaign volume to identify segments that may warrant additional optimization.

## 5. Analyze Creative Performance

Compare creative format, creative emotion, CTA presence, revenue, ROAS, CTR, and conversion rate to identify patterns associated with stronger campaign performance.

## 6. Investigate Device-Level Performance

Further investigate differences across desktop, mobile, and tablet using conversion rate, CPA, ROAS, and campaign volume rather than relying on revenue alone.

> **Note:** These are data-driven recommendations based on the observed dataset and are not claims of measured real-world business impact.

---

# Analytical Considerations

- Negative-profit campaigns were retained because negative profit represents a valid business outcome rather than necessarily indicating invalid data.
- Potential advertising-spend outliers were investigated rather than automatically removed.
- Platform comparisons should not rely on ROAS alone.
- Revenue differences across audience groups, devices, or creative attributes represent observed associations and do not establish causality.
- Campaign-level results should be evaluated alongside campaign volume, advertising spend, revenue, profit, and efficiency metrics.
- Recommendations are intended as analytical decision support based on the available dataset.

---

# Limitations

- The dataset represents campaign-level marketing observations and may not reflect actual live advertising operations.
- The analysis is based on the available 10,000 campaign records.
- No real-world business intervention was performed to measure the impact of the recommendations.
- Customer acquisition cost and detailed attribution information were not available for deeper attribution analysis.
- Attribution windows and conversion-value definitions were not available.
- Observed relationships do not establish causal relationships.
- Additional historical data could support more robust time-series and trend analysis.

---

# Conclusion

This project demonstrates an end-to-end **digital marketing analytics workflow** using **Python, Pandas, PostgreSQL, SQL, Power BI, DAX, and Power Query**.

The analysis combines:

- Data preparation
- Data validation
- Exploratory data analysis
- SQL-based business analysis
- KPI development
- Interactive Power BI reporting
- Quantified business insights
- Data-driven recommendations


The overall objective is to demonstrate practical analytics skills while connecting technical analysis with **marketing performance, advertising efficiency, profitability, audience behavior, engagement, creative performance, and platform-level decision-making**.
