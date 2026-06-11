# Pegasus Stores Customer Retention & Revenue Analysis

## Client Project Overview

This project was completed for Pegasus Stores, a retail business seeking to better understand customer lifetime value, revenue drivers, and customer retention opportunities.

Working directly with the CEO and Project Manager, the objective was to identify the customer segments delivering the highest long-term value and determine which operational and marketing initiatives should be prioritised to improve customer retention and revenue growth.

The engagement covered the full analytics lifecycle, including stakeholder requirements gathering, SQL-based data validation, exploratory data analysis, statistical analysis, dashboard development, and business recommendation delivery.

---

## My Role

As the Data Analyst on the project, I was responsible for:

* Conducting stakeholder discovery sessions
* Defining project objectives and success criteria
* Extracting data from a MySQL database
* Performing data quality assessment and validation
* Conducting exploratory SQL analysis
* Building Power BI dashboards and KPIs
* Performing statistical analysis and hypothesis testing
* Presenting insights and recommendations to stakeholders

---

## Business Challenge

The CEO wanted answers to the following questions:

* Which customer segments generate the highest long-term value?
* What factors are driving revenue performance?
* Does customer retention significantly influence revenue growth?
* How effective are discounts in driving sales?
* Which operational and marketing actions should be prioritised?

---

## Tools & Technologies

* MySQL
* SQL
* Power BI
* DAX
* Statistical Analysis
* Data Visualisation
* Business Intelligence

---

## Data Validation & Preparation

The dataset consisted of 17,049 transaction records covering the period January 2025 to March 2026.

Data quality checks included:

* Missing value assessment
* Duplicate detection
* Record count validation
* Data consistency checks
* Transaction-level customer status validation

No significant data quality issues were identified.

During the assessment, it was observed that all information was stored within a single table structure. A recommendation was made to normalise the data model to improve scalability, maintainability, and future analytical efficiency.

Additional validation confirmed that customer status evolved over time, with customers transitioning from "new" to "returning" across successive transactions. As a result, retention analysis was performed using customer transaction history rather than relying solely on the customer status field.

---

## Key Business Metrics

| Metric                | Value   |
| --------------------- | ------- |
| Net Revenue           | £21.78M |
| Total Orders          | 17,049  |
| Customer Base         | 5,000   |
| Average Order Value   | £1.28K  |
| Revenue per Customer  | £4.36K  |
| Average Discount Rate | 5.2%    |

---

## Revenue Performance Analysis

Revenue performance fluctuated throughout 2025.

Revenue increased from approximately £1.3M in January to £1.5M in April before declining to approximately £1.3M in June. A significant increase was observed in July, where revenue rose to approximately £1.56M.

Following this peak, revenue declined slightly through September, increased modestly in October, fell sharply in November, and then rebounded strongly in December.

During early 2026, revenue displayed a gradual and sustained decline, prompting further investigation into the underlying drivers.

---

## Product Category Analysis

Electronics emerged as the dominant revenue-generating category.

### Key Findings

* Electronics generated 48.3% of total revenue
* Revenue exceeded £8M during the analysis period
* Electronics significantly outperformed all other product categories
* Declining Electronics sales were identified as the primary contributor to revenue declines in 2026

### Business Insight

The business is heavily dependent on Electronics performance, making category optimisation a strategic priority.

---

## Customer Segmentation Analysis

Customer age analysis revealed clear differences in customer value.

| Age Group | Revenue Contribution |
| --------- | -------------------- |
| 30–41     | 38.3%                |
| 18–29     | 33.8%                |
| 42–53     | 22.9%                |
| 54–75     | <5%                  |

### Key Insight

Customers aged 18–53 generated approximately 95% of total revenue and represented the majority of returning customers.

These customer groups were identified as the highest-value segments and the most important audience for retention-focused initiatives.

---

## Customer Retention Analysis

Returning customers generated a significant proportion of company revenue.

### 2025 Results

* Revenue from returning customers: £16.81M
* Repeat Purchase Rate: 75.3%
* Approximately 95% of revenue originated from repeat customers

To determine whether repeat purchasing behaviour directly influenced revenue performance, statistical analysis was conducted.

### Statistical Results (2025)

| Metric      | Value  |
| ----------- | ------ |
| Correlation | -0.11  |
| R²          | 0.012  |
| P-Value     | 0.7309 |

### Interpretation

The results indicated no statistically significant relationship between monthly repeat purchase rates and revenue during 2025.

Repeat purchase behaviour explained only 1.2% of revenue variation, suggesting that short-term revenue performance was influenced by other business factors.

---

## Extended Retention Analysis (January 2025 – March 2026)

To gain a broader understanding of customer retention impact, the analysis period was extended.

### Statistical Results

| Metric      | Value  |
| ----------- | ------ |
| Correlation | 0.97   |
| R²          | 0.956  |
| P-Value     | <0.001 |

### Interpretation

The extended analysis revealed a very strong and statistically significant positive relationship between repeat purchase behaviour and revenue.

The R² value indicated that approximately 95.6% of revenue variation could be explained by changes in repeat purchasing behaviour over the longer term.

### Business Insight

While retention did not explain short-term monthly fluctuations, customer retention emerged as a major driver of long-term revenue growth.

---

## Discount Effectiveness Analysis

Discount activity was evaluated to determine its influence on customer purchasing behaviour.

### Findings

* 62% of all purchases occurred without discounts
* Only 2.6% of purchases involved high discounts
* Statistical analysis found no meaningful relationship between discounts and revenue performance

### Business Insight

Customer purchasing decisions appeared to be driven more by product demand and customer value than promotional pricing.

This suggests that broad discounting strategies may reduce margins without significantly improving revenue growth.

---

## Geographic Analysis

Customer demand was concentrated within specific markets.

### Findings

* Istanbul accounted for 25.9% of total order activity
* Other regions contributed between 4% and 14% of total orders

### Business Insight

Istanbul represents the company's strongest market and offers the greatest opportunity for customer retention and growth-focused initiatives.

---

## Recommendations

### 1. Prioritise Retention of Customers Aged 18–53

These customers generate approximately 95% of total revenue and represent the company's most valuable long-term customer segment.

Recommended actions:

* Loyalty programmes
* Personalised marketing campaigns
* Customer rewards initiatives
* Targeted retention strategies

### 2. Strengthen Electronics Category Performance

Given Electronics contributes nearly half of company revenue, management should prioritise:

* Inventory optimisation
* Demand forecasting improvements
* Product assortment expansion
* Cross-selling and upselling initiatives

### 3. Reduce Dependence on Broad Discounting

Invest in customer experience and loyalty initiatives rather than aggressive promotional activity.

Recommended actions:

* Personalised offers
* Membership benefits
* Customer engagement programmes

### 4. Increase Investment in Istanbul

As the highest-demand market, Istanbul presents a significant opportunity for growth.

Recommended actions:

* Regional marketing campaigns
* Customer retention initiatives
* Enhanced fulfilment and service delivery

### 5. Implement Customer Lifetime Value Monitoring

Track:

* Customer Lifetime Value (CLV)
* Repeat Purchase Rate
* Revenue per Customer
* Retention Rate
* Churn Rate

This will enable more effective allocation of marketing and operational resources toward high-value customer segments.

---

## Business Outcome

The analysis demonstrated that long-term revenue growth is primarily driven by customer retention and Electronics category performance rather than discount activity.

The project provided Pegasus Stores with a data-driven framework for prioritising customer retention strategies, protecting key revenue streams, and focusing investment on the customer segments and markets most likely to generate sustainable future growth.

---

**Confidentiality Notice:** Certain operational details and data structures have been simplified or anonymised to protect client confidentiality while preserving the analytical methodology and business insights.
