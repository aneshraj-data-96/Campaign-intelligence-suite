import pandas as pd
import mysql.connector

# Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root_",
    database="projects"
)

cursor = conn.cursor()

# Load CSV
df = pd.read_csv("cleaned_campaign.csv")  # Ensure this file exists in your working directory

# Convert date columns to datetime format
df['start_date'] = pd.to_datetime(df['start_date'], errors='coerce')
df['end_date'] = pd.to_datetime(df['end_date'], errors='coerce')

# Create table if not exists
cursor.execute("""
    CREATE TABLE IF NOT EXISTS campaign_data (
        campaign_id VARCHAR(50),
        campaign_name VARCHAR(255),
        start_date DATETIME,
        end_date DATETIME,
        budget FLOAT,
        channel VARCHAR(100),
        clicks INT,
        impressions INT,
        conversions INT,
        region VARCHAR(100)
    )
""")

# Insert data row by row
for _, row in df.iterrows():
    cursor.execute("""
        INSERT INTO campaign_data (
            campaign_id, campaign_name, start_date, end_date,
            budget, channel, clicks, impressions, conversions, region
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, (
        row['campaign_id'],
        row['campaign_name'],
        row['start_date'].to_pydatetime() if pd.notnull(row['start_date']) else None,
        row['end_date'].to_pydatetime() if pd.notnull(row['end_date']) else None,
        float(row['budget']),
        row['channel'],
        int(row['clicks']),
        int(row['impressions']),
        int(row['conversions']),
        row['region']
    ))

# Commit and close
conn.commit()
print("Campaign data imported successfully into MySQL.")
conn.close()
