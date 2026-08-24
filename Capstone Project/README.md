# End-to-End Sales & Profit Analysis

## Project Overview

This capstone project presents an end-to-end analysis of the Financial Sample dataset using Python/Pandas, SQL, Excel, and Power BI.

The project focuses on understanding sales performance, profitability, product performance, country performance, customer segments, discounts, and time-based trends. The analysis combines data cleaning, exploratory analysis, business metrics, SQL queries, Excel analysis, and interactive Power BI visualization to generate actionable business insights.

## Project Objective

Analyze the Financial Sample dataset end-to-end and identify key business trends and insights related to:

- Sales performance
- Profitability
- Product performance
- Country performance
- Customer segments
- Discount bands
- Yearly and monthly trends

## Dataset

The Financial Sample dataset contains sales and profitability information across products, countries, customer segments, discount bands, and time periods.

### Dataset Checks

- Rows: 700
- Columns: 16
- Duplicate rows: 0
- Missing Discount Band values: 53
- Years: 2013 and 2014
- Countries: Canada, France, Germany, Mexico, United States of America
- Segments: Government, Small Business, Enterprise, Midmarket, Channel Partners
- Products: Amarilla, Carretera, Montana, Paseo, VTT, Velo

## Analysis Performed

### Python / Pandas

Python and Pandas were used to:

- Load and inspect the dataset
- Check missing values and duplicates
- Clean and standardize the data
- Calculate overall KPIs
- Analyze performance by product, country, segment, year, and month
- Generate supporting analysis charts

### SQL

SQL queries were used to analyze:

- Overall KPIs
- Product performance
- Country performance
- Segment performance
- Yearly performance
- Monthly performance
- Discount band performance

### Excel

Excel was used to organize the cleaned dataset and supporting analysis for additional data exploration and reporting.

### Power BI

An interactive Power BI dashboard was created to visualize:

- Total Sales
- Total Profit
- Total Units Sold
- Profit Margin
- Sales and profit by product
- Sales and profit by country
- Time trends
- Interactive filters for country, product, year, and segment

## Key Findings

- **Total Sales:** approximately **$118.73M**
- **Total Profit:** approximately **$16.89M**
- **Total Units Sold:** approximately **1.13M**
- **Overall Profit Margin:** approximately **14.23%**
- **Paseo** is the highest-sales product.
- **Government** is the largest segment by sales and profit.
- **Enterprise** records negative total profit and requires further investigation.
- **2014** contributes substantially more sales and profit than 2013.
- **October** records the highest monthly sales.

## Stakeholder Insights

- High-performing products such as **Paseo** should be prioritized, while lower-performing products can be reviewed for pricing, promotion, and demand-related issues.
- Country performance should be evaluated using both **sales and profitability** rather than sales alone.
- The **Government** segment should be protected because of its strong contribution to both sales and profit.
- The negative profitability of the **Enterprise** segment should be investigated to identify possible pricing, discount, or cost issues.
- Monthly sales trends can support **inventory, promotion, and staffing decisions**.

## Project Workflow

```text
Raw Dataset
    ↓
Data Cleaning & Validation
    ↓
Python / Pandas Analysis
    ↓
SQL Analysis
    ↓
Excel Analysis
    ↓
Power BI Dashboard
    ↓
Business Insights & Recommendations
```
## Project Files

| File / Folder | Description |
|---|---|
| `Sample data (1).xlsx` | Original Financial Sample dataset |
| `Week4_End_to_End_Analysis.xlsx` | Cleaned data and Excel analysis |
| `analysis.py` | Python/Pandas analysis |
| `analysis.sql` | SQL analysis queries |
| `Sales & Profit Performance Dashboard.pbix` | Power BI dashboard |
| `Week4_End_to_End_Analysis_Report.pdf` | Stakeholder explanation report |
| `charts/` | Supporting analysis charts |

## Project Outcome

This project demonstrates an end-to-end data analytics workflow, from raw data cleaning and analysis to business intelligence dashboarding and stakeholder-oriented recommendations.

## Author

**Akula Siri Chandana**

B.Tech – Data Science