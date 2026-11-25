# Global Superstore Sales & Profitability Analysis (End-to-End BI Project)

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Excel](https://img.shields.io/badge/Microsoft%20Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)

## Project Overview
An end-to-end Business Intelligence project analyzing **51,270+ retail transactions** across global markets for the **Global Superstore** dataset. The project covers data cleaning, exploratory SQL analysis, Star Schema data modeling, and a 3-page interactive Power BI dashboard designed to uncover revenue drivers, profitability leaks, shipping efficiency, and top customer/product segments.

---

## Tech Stack & Workflow
* **Data Cleaning & Preparation (Excel & Power Query):** Standardized text fields (`Trim` / `Clean`), handled missing values, validated data types, and removed duplicates to produce a clean analysis-ready dataset.
* **Exploratory Analysis (SQL Server / SSMS):** Authored 10 analytical SQL queries using CTEs, window functions, `GROUP BY`, and `HAVING` clauses to evaluate regional sales shares, discount impacts, and loss-making orders.
* **Data Modeling & Visualization (Power BI & DAX):** Built a **Star Schema** model (`superstore_sales` fact table, `Date_dim` calendar table, and a dedicated `_Measures` table) with custom DAX measures for Time Intelligence (YoY growth), unit economics, and logistics KPIs.
* **UI/UX Design:** Dark-theme glassmorphic layout featuring page navigation buttons, per-page **Reset Filters** bookmarks, custom SVG KPI icons, and dynamic conditional formatting.

---

## Dashboard Preview

### 1. Executive Overview
Tracks high-level performance (**Total Sales, Total Profit, Profit Margin, Total Orders, Average Discount**) with Year-over-Year (YoY) comparisons, category sales vs. profit, order priority fulfillment, shipping cost breakdown by mode, and monthly sales trends.

> *Preview below filtered to **2014** to showcase YoY growth indicators (`$4.29M` Sales, `+26.1% vs LY`; `$503.15K` Profit, `+23.2% vs LY`). Across all years: `$12.64M` Total Sales, `$1.47M` Total Profit, `11.61%` Profit Margin, and `25,029` Unique Orders.*

![Executive Overview](images/SS1.jpg)

---

### 2. Sales Analysis
Deep-dives into order economics and geographic performance with **Avg Order Value (`$505`)**, **Total Quantity (`178,238`)**, **Avg Items per Order (`7`)**, and **Unprofitable Orders % (`25.1%` / `6,280` orders)**, alongside Market/Region breakdowns, Current vs. Last Year monthly trends, and Category sales vs. quantity.

![Sales Analysis](images/SS2.jpg)

---

### 3. Product & Customer Insights
Highlights customer base metrics (**`796` Total Customers**, **`3,788` Unique Products**, **`$1,844` Avg Profit per Customer**) and logistics KPIs (**`4` Avg Shipping Days**, **`$26.4` Avg Shipping Cost**), paired with Sub-Category profitability, Top 5 Customers, Segment Sales Share, and Top 10 Products by Sales.

![Product & Customer Insights](images/SS3.jpg)

---

## Key Business Insights
* **Strong YoY Momentum:** In 2014, sales grew **+26.1% YoY** (`$4.29M`) and profit rose **+23.2% YoY** (`$503.15K`), though profit margin dipped slightly (**-0.3% YoY**) due to discounting pressure (`14.3%` average discount).
* **Profitability Leakage:** **25.1% of all orders (6,280 orders)** are unprofitable. At the sub-category level, **Tables** is the only net loss-maker (**-$64.1K**), whereas **Copiers (`$258.2K`)** and **Phones (`$216.7K`)** lead total profit.
* **Geographic Concentration:** **APAC (`$3.6M`)** and **EU (`$2.9M`)** generate over half of global revenue, with **Central (`$2.8M`)** standing out as the top-performing region.
* **Seasonality:** Sales follow a clear Q4 surge, peaking in **November (`$1.55M`)** and **December (`$1.58M`)**, while **February (`$0.54M`)** consistently records the lowest volume.
* **Customer & Product Mix:** The **Consumer** segment drives **51.5% (`$6.5M`)** of total sales, followed by **Corporate (`30.3%`)** and **Home Office (`18.3%`)**. High-ticket electronics (smartphones and copiers) dominate the Top 10 products list.
* **Shipping & Priority Alignment:** **100% of Low-priority orders** ship via `Standard Class`, while **Critical** orders rely heavily on expedited modes (`45% First Class`, `18% Same Day`, `37% Second Class`), keeping overall delivery at an average of **4 days** and **$26.4** per order.

---

## Business Recommendations
1. **Cap Discounts on Tables:** Audit pricing and discount thresholds on `Tables` to eliminate the **-$64.1K** loss and reduce the **25.1%** unprofitable order rate.
2. **Double Down on High-Margin Tech:** Expand marketing and inventory allocation for `Copiers` and `Phones`, especially ahead of the **Q4 (Nov–Dec)** demand spike.
3. **Target Underpenetrated Markets:** Evaluate growth barriers in **EMEA (`$0.8M`)**, **Africa (`$0.8M`)**, and **Canada (`$0.1M`)** while maintaining retention programs for top accounts in **APAC** and **EU**.
4. **Optimize Shipping Costs:** Since `Standard Class` accounts for **45.5%** of total shipping spend, negotiate bulk carrier rates for standard shipments to protect overall profit margins.

---

## Repository Structure
```text
├── data/
│   └── superstore_cleaned.csv        # Cleaned dataset ready for analysis
├── sql/
│   └── superstore_analysis.sql       # 10 exploratory SQL queries (SSMS)
├── excel/
│   └── superstore_excel_analysis.xlsx # Initial Excel pivot & exploratory analysis
├── powerbi/
│   └── SuperStore_Dashboard.pbix     # Interactive 3-page Power BI dashboard
├── report/
│   └── Business_Insights_Report.pdf  # Executive summary & findings report
├── images/
│   ├── SS1.jpg                       # Page 1: Executive Overview
│   ├── SS2.jpg                       # Page 2: Sales Analysis
│   └── SS3.jpg                       # Page 3: Product & Customer Insights
└── README.md
