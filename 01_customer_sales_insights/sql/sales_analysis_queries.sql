-- Customer & Sales Insights Analysis
-- Dataset: Online Retail
-- Author: SusaAnalytics
-- Purpose: Exploratory sales and customer analysis

##column in dataset:   #InvoiceNo # StockCode  #Description #Quantity   #InvoiceDate   #UnitPrice  #CustomerID  #Country

-- 1. Monthly revenue trend
SELECT
    DATE_TRUNC('month', InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS total_revenue
FROM online_retail
WHERE Quantity > 0
GROUP BY DATE_TRUNC('month', InvoiceDate)
ORDER BY month;
