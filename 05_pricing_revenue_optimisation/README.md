# 💳 Project 05 — Pricing / Revenue Optimisation Analytics (Price vs Volume)

## Overview
This project decomposes revenue movements into **price-driven** and **volume-driven** components to support pricing decisions, performance monitoring, and revenue planning—highly relevant for banking and commercial analytics.

## Business Questions
- Is revenue growth driven by **price** or **demand/volume**?
- What happens to revenue under **+5% / −5% price shocks**?
- What does an **elasticity proxy** suggest about pricing power?

## Dataset
Online retail transactions aggregated to monthly:
- Revenue = Quantity × UnitPrice  
- Monthly metrics: Revenue, Average Price, Sales Volume

## Method
1. Monthly aggregation
2. Revenue change decomposition:
   - Price effect = ΔPrice × prior Volume
   - Volume effect = ΔVolume × prior Price
3. Contribution (%) analysis
4. Price shock scenario (+5% / −5%)
5. Elasticity proxy (ΔlogQ vs ΔlogP)

## Key Insights
- Revenue change is explained by a mix of price and volume effects.
- Contribution percentages can spike when total revenue change is small or changes sign—so absolute $ impacts are also reported.
- Scenario analysis helps quantify upside/downside revenue sensitivity to pricing moves.

## Tools
Python, Pandas, NumPy, Matplotlib, Statsmodels

## Outputs
- Price vs Volume contribution chart
- Price shock cumulative impact chart
- Elasticity proxy estimate + scatter plot
