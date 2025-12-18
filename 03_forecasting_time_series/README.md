# 📈 Forecasting & Time Series Analysis

## Project Overview
Accurate forecasting is critical for planning, budgeting, and operational decision-making.  
This project applies **classical and modern time-series forecasting models** to historical retail sales data to predict future revenue patterns.

The focus is on **business-relevant forecasting**, combining statistical rigour with interpretability.

---

## Business Problem
Organisations need reliable demand forecasts to:
- anticipate future revenue
- plan inventory and staffing
- support financial and strategic decisions

This project demonstrates how different forecasting approaches perform on real transactional data.

---

## Dataset
- Online retail transaction data
- Time granularity: **Daily revenue**
- Target variable: **Total daily revenue**
- Data cleaned to remove cancellations and negative transactions

---

## Methodology
The analysis follows a structured forecasting pipeline:

### 1. Data Preparation
- Revenue creation (`Quantity × UnitPrice`)
- Removal of cancelled / negative invoices
- Daily aggregation and missing-date handling

### 2. Exploratory Time Series Analysis
- Trend and volatility inspection
- Weekly seasonality detection
- Seasonal decomposition (additive model)

### 3. Forecasting Models
The following models were implemented and compared:

- **Naïve baseline** (last observed value)
- **SARIMA** – classical statistical model with weekly seasonality
- **ETS / Holt-Winters** – exponential smoothing with trend and seasonality
- **Prophet** – modern decomposable time-series model

### 4. Model Evaluation
- Train–test split (last 60 days as test set)
- Performance metrics:
  - MAE (Mean Absolute Error)
  - RMSE (Root Mean Squared Error)

---

## Results Summary

| Model    | MAE ↓ | RMSE ↓ |
|---------|------|-------|
| **SARIMA** | **13,196** | **23,702** |
| ETS | 15,869 | 27,528 |
| Prophet | 18,124 | 29,367 |
| Naïve | 21,789 | 31,948 |

**SARIMA achieved the best overall performance**, capturing weekly seasonality and short-term dynamics more effectively than other models.

---

## Key Insights
- Daily revenue shows strong **weekly seasonality**
- Classical models (SARIMA, ETS) outperform Prophet on short-term horizons
- Extreme demand spikes are harder to capture with purely statistical models
- SARIMA provides a strong balance between accuracy and interpretability

---

## Tools & Skills
- Python (Pandas, NumPy, Matplotlib)
- Statsmodels (SARIMA, ETS)
- Prophet
- Time Series Forecasting
- Model Evaluation & Business Interpretation

---

## Project Status
✅ Completed — forecasting models, evaluation, and insights finalised.
