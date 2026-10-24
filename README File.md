# 📊 Telco Customer Churn & Revenue Risk Analysis

![Python](https://img.shields.io/badge/Python-3.10-blue) 
![SQL](https://img.shields.io/badge/SQL-SQLite-green) 
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-orange)
![Seaborn](https://img.shields.io/badge/Seaborn-Visualization-brightgreen)

## 📌 Business Overview
In the subscription-based telecommunications industry, customer acquisition costs significantly outweigh retention costs. Analyzing **7,043 customer records** from IBM's Telco dataset, this project identifies critical driver metrics behind customer churn, quantifies monthly recurring revenue (MRR) at risk, and delivers actionable business recommendations to improve customer retention.

---

## 🎯 Key Business Findings
* **Contract Risk:** Month-to-Month customers exhibit a **42.7% churn rate**, compared to **11.3%** for 1-year and **2.8%** for 2-year contracts.
* **Service Vulnerability:** Fiber Optic subscribers churn at **41.9%**, driven by higher monthly price points ($80+) and service competition.
* **Onboarding Drop-off:** **59% of all churn** occurs within the first **12 months** of customer tenure.
* **Payment Method:** Electronic Check users churn at **45.3%**, more than double compared to automatic payment methods (~16%).

---

## 🛠️ Project Structure & Tech Stack

```text
telco-customer-churn-analysis/
├── data/
│   └── telco_churn.csv                # Raw dataset (7,043 rows)
├── scripts/
│   ├── data_processing.py             # Python cleaning & ETL pipeline
│   └── sql_churn_queries.sql          # Business SQL analysis & aggregations
├── dashboards/
│   └── churn_analysis_dashboard.png   # 6-panel visualization overview
├── README.md                          # Repository documentation
└── requirements.txt                   # Environment dependencies
```

---

## 📊 SQL Insights & Analytics

The analysis utilizes advanced SQL (CTEs, Conditional Aggregations, Window Functions) to calculate revenue risk per churn segment:

* **Overall Churn Rate:** 26.5%
* **Total Monthly Revenue at Risk:** $139,130 / month (~26.8% of total monthly charges)

For full query implementations, refer to [`scripts/sql_churn_queries.sql`](./scripts/sql_churn_queries.sql).

---

## 💡 Strategic Recommendations for Stakeholders

1. **Onboarding Retention Program:** Implement automated check-ins and onboarding incentives ($10 bill credit for 3 months) for new subscribers in months 1–6 to bridge the critical first-year tenure mark.
2. **Contract Conversion Campaign:** Launch targeted upgrade offers (e.g., free speed upgrade or streaming bundle) for high-tenure month-to-month customers to move them to annual contracts.
3. **Payment Method Incentivization:** Offer a small $2/month discount for setting up automatic bank or credit card payments, as automatic payments show a ~16% churn rate compared to 45% for manual checks.

---

## 🚀 Quickstart Guide

1. **Clone the repository:**
   ```bash
   git clone https://github.com/dipusharmads6377/telco-customer-churn-analysis.git
   cd telco-customer-churn-analysis
   ```

2. **Install required packages:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run data pipeline:**
   ```bash
   python scripts/data_processing.py
   ```