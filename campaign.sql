# Data Analyst SQL Queries

# Campaign Performance Overview
SELECT 
    COUNT(*) AS total_campaigns,
    AVG(budget) AS average_budget,
    AVG(clicks) AS average_clicks,
    AVG(impressions) AS average_impressions,
    AVG(conversions) AS average_conversions
FROM campaign_data;

# Click-Through Rate (CTR) by Channel
SELECT 
    channel,
    SUM(clicks) AS total_clicks,
    SUM(impressions) AS total_impressions,
    ROUND(SUM(clicks) * 100.0 / NULLIF(SUM(impressions), 0), 2) AS ctr_percent
FROM campaign_data
GROUP BY channel
ORDER BY ctr_percent DESC;

# Conversion Rate by Channel
SELECT 
    channel,
    SUM(conversions) AS total_conversions,
    SUM(clicks) AS total_clicks,
    ROUND(SUM(conversions) * 100.0 / NULLIF(SUM(clicks), 0), 2) AS conversion_rate_percent
FROM campaign_data
GROUP BY channel
ORDER BY conversion_rate_percent DESC;

# Budget Utilization by Region
SELECT 
    region,
    COUNT(*) AS campaign_count,
    SUM(budget) AS total_budget
FROM campaign_data
GROUP BY region
ORDER BY total_budget DESC;

# Campaign Duration Analysis
SELECT 
    campaign_id,
    DATEDIFF(end_date, start_date) AS duration_days
FROM campaign_data
ORDER BY duration_days DESC;

# Daily Campaign Launch Count
SELECT 
    DATE(start_date) AS launch_date,
    COUNT(*) AS campaigns_launched
FROM campaign_data
GROUP BY DATE(start_date)
ORDER BY launch_date;

# Business Analyst SQL Queries

# Top Performing Campaigns by Conversion
SELECT 
    campaign_id,
    campaign_name,
    conversions,
    clicks,
    ROUND(conversions * 100.0 / NULLIF(clicks, 0), 2) AS conversion_rate_percent
FROM campaign_data
ORDER BY conversion_rate_percent DESC
LIMIT 10;

# Budget Efficiency by Campaign
SELECT 
    campaign_id,
    campaign_name,
    budget,
    conversions,
    ROUND(conversions / NULLIF(budget, 0), 2) AS conversions_per_dollar
FROM campaign_data
ORDER BY conversions_per_dollar DESC
LIMIT 10;

# Channel-Wise Budget Allocation
SELECT 
    channel,
    COUNT(*) AS campaign_count,
    SUM(budget) AS total_budget
FROM campaign_data
GROUP BY channel
ORDER BY total_budget DESC;

# Regional Conversion Performance
SELECT 
    region,
    SUM(conversions) AS total_conversions,
    SUM(clicks) AS total_clicks,
    ROUND(SUM(conversions) * 100.0 / NULLIF(SUM(clicks), 0), 2) AS conversion_rate_percent
FROM campaign_data
GROUP BY region
ORDER BY conversion_rate_percent DESC;

# Campaigns with Low Performance
SELECT 
    campaign_id,
    campaign_name,
    clicks,
    conversions,
    ROUND(conversions * 100.0 / NULLIF(clicks, 0), 2) AS conversion_rate_percent
FROM campaign_data
WHERE conversions < 10 AND clicks > 100
ORDER BY conversion_rate_percent ASC;

# Monthly Campaign Summary
SELECT 
    DATE_FORMAT(start_date, '%Y-%m') AS month,
    COUNT(*) AS campaigns_launched,
    SUM(budget) AS total_budget,
    SUM(clicks) AS total_clicks,
    SUM(conversions) AS total_conversions
FROM campaign_data
GROUP BY month
ORDER BY month;
