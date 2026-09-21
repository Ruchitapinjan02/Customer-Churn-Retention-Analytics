**#** **AI-Powered Customer Churn \& Retention Analytics**



**##** 📌 **Project Overview**



This project analyzes customer churn and identifies customers who are at high risk of leaving a telecom company.



The project combines \*\*Python, SQL, Machine Learning, and Power BI\*\* to transform customer data into actionable business insights and retention recommendations.



**## 🎯 Business Problem**



Customer churn can negatively impact revenue and customer relationships.



The objective of this project is to:



\- Identify customers who are likely to churn

\- Analyze factors associated with customer churn

\- Segment customers based on churn risk

\- Estimate revenue at risk

\- Provide data-driven customer retention recommendations

\- Build an interactive business dashboard





**## 🛠️ Technologies Used**



\- Python

\- Pandas

\- NumPy

\- Matplotlib

\- Seaborn

\- Scikit-learn

\- XGBoost

\- SHAP

\- SQL / MySQL

\- Power BI

\- Jupyter Notebook





**## 📊 Project Workflow**



text

Raw Customer Data

&#x20;      ↓

Data Cleaning

&#x20;      ↓

Exploratory Data Analysis

&#x20;      ↓

Feature Engineering

&#x20;      ↓

SQL Analysis

&#x20;      ↓

Machine Learning

&#x20;      ↓

Churn Probability

&#x20;      ↓

Customer Risk Segmentation

&#x20;      ↓

Revenue at Risk

&#x20;      ↓

Retention Recommendations

&#x20;      ↓

Power BI Dashboard





**🔍 Key Analysis**



The project analyzes churn based on:



Contract type

Tenure

Internet service

Payment method

Monthly charges

Total charges

Online security

Technical support

Customer risk category



The overall churn rate in the analyzed dataset is 26.58%.





**🤖 Machine Learning**



The following classification models were evaluated:



Logistic Regression

Decision Tree

Random Forest

XGBoost



The trained Random Forest model was used for customer churn probability and risk scoring.



Risk categories were created using project-defined probability thresholds:



Low Risk

Medium Risk

High Risk





**💰 Revenue at Risk**



The project estimates potential monthly revenue exposure using:



Revenue at Risk =

Monthly Charges × Churn Probability



This is an analytical estimate rather than guaranteed future revenue loss.





🎯 **Retention Recommendations**



Based on customer risk and characteristics, the project generates recommendations such as:



Offer long-term contract discounts

Provide personalized pricing offers

Promote technical support

Offer online security packages

Prioritize customers with high churn probability





📈 **Power BI Dashboard**
![Power BI Dashboard](dashboard_preview.png)


The Power BI dashboard contains five main pages:



Executive Overview

Churn Analysis

Customer Risk

High Risk Customers

Retention Recommendations



The dashboard provides interactive KPIs, charts, customer risk analysis, and retention insights.





📁 **Project Structure**

Customer-Churn-Retention-Analytics/

│

├── data/

│   ├── WA\_Fn-UseC\_-Telco-Customer-Churn.csv

│   └── customer\_churn\_final.xlsx

│

├── notebooks/

│   └── Customer\_Churn\_Analytics.ipynb

│

├── sql/

│   ├── database\_creation.sql

│   └── analysis\_queries.sql

│

├── dashboard/

│   └── Customer\_Churn\_Retention\_Analytics.pbix

│

├── models/

│   └── churn\_model.pkl

│

├── reports/

│

├── requirements.txt

│

└── README.md



🚀 **Future Improvements**

* Deploy the churn prediction model using Streamlit
* Add automated model retraining
* Improve hyperparameter tuning
* Add customer-level explainability using SHAP
* Connect Power BI directly to a database
* Develop automated retention campaigns





👩‍💻 **Project Author**



Ruchita Pinjan

M.Sc. Data Science





