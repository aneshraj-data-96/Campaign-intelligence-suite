# app.py
import streamlit as st
import joblib
import pandas as pd

# Load model
model = joblib.load("C:\\Users\\Dhusyath\\Downloads\\PROJECTS_DA\\PROJECTS_DA\\Campaign_Intelligence_Suite_Marketing_Ads\\campaign_model.pkl")

st.title("Campaign Intelligence Suite")
st.subheader("Predict Campaign Conversions")

# Input fields
budget = st.number_input("Budget (₹)", min_value=1000.0, max_value=100000.0, value=5000.0)
impressions = st.number_input("Impressions", min_value=1000, max_value=100000, value=10000)
clicks = st.number_input("Clicks", min_value=0, max_value=10000, value=500)
duration_days = st.slider("Campaign Duration (days)", min_value=1, max_value=365, value=30)

# Predict button
if st.button("Predict Conversions"):
    input_df = pd.DataFrame([{
        "budget": budget,
        "impressions": impressions,
        "clicks": clicks,
        "duration_days": duration_days
    }])
    prediction = model.predict(input_df)[0]
    st.success(f" Predicted Conversions: {int(prediction)}")

# Optional: Add charts or insights
st.markdown("---")
st.caption("Model trained using Random Forest on 2 lakh synthetic campaign records.")
