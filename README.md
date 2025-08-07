# Ev-market-analysis-sql
Real-world SQL analysis project on electric cars
# Electric Vehicle Market Analysis using SQL

This project analyzes real-world electric vehicle (EV) data to extract insights that can help consumers and manufacturers make data-driven decisions.

## 📌 Dataset
Table: `electriccardata_clean
Source: Kaggle Dataset

### Columns:
- Brand, Model, AccelSec, TopSpeed_KmH, Range_Km, Efficiency_WhKm, FastCharge_KmH, RapidCharge, PowerTrain, PlugType, BodyStyle, Segment, Seats, PriceEuro

---

## 🔧 Phase 1: Data Cleaning
- Removed rows with NULL values in critical fields (Price, Range, Efficiency, etc.)
- Trimmed strings to eliminate whitespace issues
- Handled duplicate entries (`Kia e-Soul 64 kWh` appeared twice)

---

## 📊 Phase 2: Key Business Insights

### 🚗 Fast-Charging Plug Types
- Type 4: Fastest average (520 Km/h)
- Type 2 CCS: 463 Km/h
- Type 1 ChadeMO: Lowest (190 Km/h)

### ⚡ Most Efficient EVs
- Lightyear One: 104 Wh/km (but €149,000)
- Hyundai IONIQ Electric: 153 Wh/km
- Tesla Model 3 (Standard): 153 Wh/km

### 💰 Value-for-Money (Lowest € per Km of Range)
- Volkswagen ID.3 Pro S: €93.04/km
- Skoda Enyaq iV 80: €95.24/km
- Renault ZOE ZE50: €99/km

### 🏎️ Fastest Acceleration
- Tesla Roadster: 2.1s
- Tesla Model S Performance: 2.5s
- Tesla Cybertruck Tri Motor: 3s

### 📉 Segment-Wise Range Averages
- Segment A (City cars): Lower avg. range
- Segment D/E/F (Mid-size SUVs & sedans): Balanced performance
- Tesla models dominate performance-heavy segments

---

## 📌 Tools Used
- MySQL Workbench
- SQL window functions, joins, aggregates
- Manual CSV import

---

## 🚀 Future Scope
- Visualize insights with Python + Seaborn/Plotly
- Build a dashboard (Tableau/Power BI)
- Compare year-over-year trends (if time-series data is added)
