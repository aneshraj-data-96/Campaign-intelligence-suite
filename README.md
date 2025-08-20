# 📊 Campaign Intelligence Suite

A data-driven analytics and modeling solution designed to optimize marketing campaign performance across multiple channels and regions. This suite empowers stakeholders with actionable insights, predictive modeling, and interactive dashboards to drive strategic decisions.

[Campaign-intelligence-suite(repo)](https://github.com/aneshraj-data-96/Campaign-intelligence-suite)

---

## 🧠 Project Overview

Marketing teams often struggle to evaluate campaign effectiveness across diverse platforms like TV, Social Media, Email, and Search. This project analyzes 200,000+ campaign records to uncover performance drivers, predict conversion outcomes, and visualize key metrics.

**Key Objectives:**
- Clean and preprocess multi-channel campaign data
- Engineer features for modeling and dashboarding
- Build predictive models for conversion optimization
- Deploy interactive dashboards for stakeholder use

---

## 📁 Project Structure

| File Name                          | Description                                                                 |
|------------------------------------|-----------------------------------------------------------------------------|
| `campaign_data.csv`                | Raw campaign dataset with 200,000 entries                                  |
| `cleaned_campaign.csv`            | Preprocessed dataset with feature engineering                              |
| `campaign_model.pkl`              | Trained model for predicting conversions                                   |
| `campaign.sql`                    | SQL queries for data extraction and filtering                              |
| `sqlconnect.py`                   | Python script for SQL database connection                                  |
| `app.py`                          | Streamlit app for dashboard deployment                                     |
| `campaign intelligence suite.ipynb` | Jupyter notebook with EDA, modeling, and insights                        |
| `campaign intelligence suite dashboard` | Packaged dashboard for stakeholder presentation                     |

---

## 🧹 Data Preprocessing

- Converted `start_date` and `end_date` to datetime format
- Calculated campaign duration
- Normalized budget and engagement metrics
- One-hot encoded categorical features (`channel`, `region`)
- Removed outliers and handled missing values

---

## 📈 Exploratory Data Analysis

- Campaign performance trends by channel and region
- Budget vs. conversions correlation
- Click-through and conversion rate distributions
- Seasonal and duration-based performance patterns

---

## 🤖 Modeling Approach

- **Target Variable**: `conversions`
- **Algorithms Used**: Linear Regression, Random Forest, XGBoost
- **Evaluation Metrics**: RMSE, R² Score, MAE
- **Feature Importance**: Budget, Impressions, Channel, Region

---

## 📊 Dashboard Overview

Built using **Streamlit**, the dashboard includes:

- 📍 Campaign-level performance summary
- 📊 Channel-wise conversion trends
- 🗺️ Regional heatmaps
- 🔮 Conversion prediction tool
- 📅 Time-based campaign analysis

### 📸 Dashboard Preview

<img src="https://image2url.com/images/1755692537776-dc5c5f78-5f17-4827-9525-b1dcb926c37f.png" alt="Dashboard Preview" width="600"/>

---

## 🚀 Deployment

- Model serialized with `joblib` as `campaign_model.pkl`
- Dashboard deployed via **Streamlit Cloud**
- SQL integration for dynamic data updates
- Git LFS used for large file management

---

## 🧠 Business Impact

- Identifies high-performing channels and regions
- Predicts conversion outcomes for budget planning
- Enables real-time campaign monitoring
- Supports data-driven marketing strategy

---

## 🛠️ Tech Stack

- **Python**: Pandas, NumPy, Scikit-learn, Streamlit
- **SQL**: Data extraction and filtering
- **Visualization**: Matplotlib, Seaborn, Plotly
- **Deployment**: Streamlit Cloud, GitHub, Git LFS

---

## 📌 Future Enhancements

- Integrate real-time campaign feeds via APIs
- Add ROI and cost-per-conversion metrics
- Enable user-uploaded campaign data for prediction
- Expand dashboard to include A/B testing insights

---

## 👤 Author

**Dhusyath**  
Data Analyst | Data Scientist | Business Analyst  
Focused on multi-industry impact through predictive modeling and dashboarding.  
📍 Chennai, India

---
