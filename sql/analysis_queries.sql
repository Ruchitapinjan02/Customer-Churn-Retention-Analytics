USE customer_churn_db;
SELECT COUNT(*) AS total_rows
FROM customer_churn;
SELECT Churn, COUNT(*) AS customer_count
FROM customer_churn
GROUP BY Churn;
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn;
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Contract;
SELECT
    InternetService,
    COUNT(*) AS total_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY InternetService;
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY PaymentMethod;
SELECT
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS average_monthly_charges
FROM customer_churn
GROUP BY Churn;
SELECT
    tenure,
    COUNT(*) AS total_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY tenure
ORDER BY tenure;
SELECT
    Churn,
    ROUND(AVG(TotalCharges), 2) AS average_total_charges
FROM customer_churn
GROUP BY Churn;