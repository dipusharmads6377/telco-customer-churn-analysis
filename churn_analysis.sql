-- SQLite-compatible Telco churn queries
SELECT Contract, ROUND(100.0*SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate_pct
FROM telco_customer_churn GROUP BY Contract ORDER BY churn_rate_pct DESC;

SELECT InternetService, ROUND(100.0*SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate_pct
FROM telco_customer_churn GROUP BY InternetService ORDER BY churn_rate_pct DESC;

SELECT PaymentMethod, ROUND(100.0*SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate_pct
FROM telco_customer_churn GROUP BY PaymentMethod ORDER BY churn_rate_pct DESC;

SELECT CASE WHEN tenure<12 THEN '0-11 months' WHEN tenure<24 THEN '12-23 months'
WHEN tenure<48 THEN '24-47 months' ELSE '48+ months' END AS tenure_group,
COUNT(*) AS customers, ROUND(100.0*SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate_pct
FROM telco_customer_churn GROUP BY tenure_group ORDER BY churn_rate_pct DESC;
