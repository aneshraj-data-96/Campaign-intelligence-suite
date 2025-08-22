# 📊 Campaign Intelligence Suite

An end-to-end analytics and modeling solution designed to optimize marketing campaign performance across multiple channels and regions. This suite empowers marketing teams with predictive insights, performance diagnostics, and interactive dashboards to drive strategic decisions and maximize ROI.

---

## 🚗 GitHub Repository  
🔗 [click to view Campaign-intelligence-suite](https://github.com/aneshraj-data-96/Campaign-intelligence-suite)

---

## 🧠 Project Overview

Evaluating campaign effectiveness across platforms like TV, Social Media, Email, and Search is a persistent challenge for marketers. This project analyzes **200,000+ campaign records** to uncover performance drivers, predict conversion outcomes, and visualize key metrics for stakeholder decision-making.

### 🔍 Key Objectives

- Clean and preprocess multi-channel campaign data  
- Engineer features for predictive modeling and dashboarding  
- Build regression models to optimize conversion outcomes  
- Deploy interactive dashboards for real-time campaign monitoring  

---

## 📁 Project Structure

| File Name                              | Description                                                                 |
|----------------------------------------|-----------------------------------------------------------------------------|
| `campaign_data.csv`                    | Raw campaign dataset with 200,000 entries                                  |
| `cleaned_campaign.csv`                 | Preprocessed dataset with feature engineering                              |
| `campaign_model.pkl`                   | Trained model for predicting conversions                                   |
| `campaign.sql`                         | SQL queries for data extraction and filtering                              |
| `sqlconnect.py`                        | Python script for SQL database connection                                  |
| `app.py`                               | Streamlit app for dashboard deployment                                     |
| `campaign intelligence suite.ipynb`    | Jupyter notebook with EDA, modeling, and insights                          |
| `campaign intelligence suite dashboard`| Packaged dashboard for stakeholder presentation                            |

---

## 🧹 Data Preprocessing

- Converted `start_date` and `end_date` to datetime format  
- Calculated campaign duration  
- Normalized budget and engagement metrics  
- One-hot encoded categorical features (`channel`, `region`)  
- Removed outliers and handled missing values  

---

## 📈 Exploratory Data Analysis

- 📊 Performance trends by channel and region  
- 💰 Budget vs. conversions correlation  
- 📈 Click-through and conversion rate distributions  
- 📅 Seasonal and duration-based performance patterns  

---

## 🤖 Modeling Approach

- **Target Variable**: `conversions`  
- **Algorithms Used**: Linear Regression, Random Forest, XGBoost  
- **Evaluation Metrics**: RMSE, R² Score, MAE  
- **Top Features**: `Budget`, `Impressions`, `Channel`, `Region`  

---

## 📊 Dashboard Overview

### 🔷 Power BI Dashboard  
Visualizes campaign performance across dimensions:

- 🗺️ Regional conversion heatmaps  
- 📊 Channel-wise conversion trends  
- 📅 Campaign timeline analysis  
- 📈 KPI cards for budget, impressions, and conversion rates  

![Power BI Preview](https://image2url.com/images/1755692537776-dc5c5f78-5f17-4827-9525-b1dcb926c37f.png)  
![Power BI Preview](https://image2url.com/images/1755871767599-795ecd6c-cf59-422e-82e1-0250e55558f7.png)

---

### 🟢 Streamlit App  
Interactive dashboard for real-time campaign insights:

- 📍 Campaign-level performance summary  
- 🔮 Conversion prediction tool  
- 📊 Feature importance visualization  
- 📍 Filters by channel, region, and campaign duration  

![Streamlit Preview](https://image2url.com/images/1755871786205-7f349425-cd26-421f-948f-ba396ba60b42.png)  
![Streamlit Preview](https://image2url.com/images/1755871817425-4fdf5b64-f71c-46c5-b16c-c8ca8d515093.png)

---

## 🚀 Deployment

- Model serialized with `joblib` as `campaign_model.pkl`  
- Dashboard deployed via **Streamlit Cloud**  
- SQL integration for dynamic data updates  
- Git LFS used for large file management  

---

## 🧠 Business Impact

- Identifies high-performing channels and regions  
- Predicts conversion outcomes for budget allocation  
- Enables real-time campaign monitoring and diagnostics  
- Supports data-driven marketing strategy and ROI optimization  

---

## 🛠️ Tech Stack

- **Python**: Pandas, NumPy, Scikit-learn, Streamlit  
- **SQL**: Data extraction and filtering  
- **Visualization**: Power BI, Matplotlib, Seaborn, Plotly  
- **Deployment**: Streamlit Cloud, GitHub, Git LFS  

---

## 📌 Future Enhancements

- Integrate real-time campaign feeds via APIs  
- Add ROI and cost-per-conversion metrics  
- Enable user-uploaded campaign data for prediction  
- Expand dashboard to include A/B testing insights and uplift modeling  

---

## 👤 Author

**Anesh Raj**  
 
🔗 [GitHub Profile](https://github.com/aneshraj-data-96)
