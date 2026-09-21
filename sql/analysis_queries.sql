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
-- =====================================================
-- 10. Churn by Online Security
-- =====================================================

SELECT
    OnlineSecurity,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY OnlineSecurity;
-- =====================================================
-- 11. Churn by Tech Support
-- =====================================================

SELECT
    TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY TechSupport;
-- =====================================================
-- 12. Churn by Senior Citizen
-- =====================================================

SELECT
    SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY SeniorCitizen;
-- =====================================================
-- 13. Churn by Partner
-- =====================================================

SELECT
    Partner,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Partner;
-- =====================================================
-- 14. Churn by Dependents
-- =====================================================

SELECT
    Dependents,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Dependents;
-- =====================================================
-- 15. Churn by Phone Service
-- =====================================================

SELECT
    PhoneService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY PhoneService;
-- =====================================================
-- 15. Churn by Phone Service
-- =====================================================

SELECT
    PhoneService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY PhoneService;
-- =====================================================
-- 16. Churn by Multiple Lines
-- =====================================================

SELECT
    MultipleLines,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY MultipleLines;
-- 17. Churn by Paperless Billing

SELECT
    PaperlessBilling,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY PaperlessBilling;
-- 18. High-Risk Customer Segmentation

SELECT
    customerID,
    Contract,
    tenure,
    MonthlyCharges,
    Churn
FROM customer_churn
WHERE Contract = 'Month-to-month'
  AND tenure <= 12
  AND MonthlyCharges >= 70
ORDER BY MonthlyCharges DESC;
-- 19. Revenue at Risk

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(MonthlyCharges) AS monthly_revenue,
    SUM(
        CASE
            WHEN Churn = 'Yes' THEN MonthlyCharges
            ELSE 0
        END
    ) AS churned_revenue
FROM customer_churn
GROUP BY Contract
ORDER BY churned_revenue DESC;