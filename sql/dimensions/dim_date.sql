CREATE OR REPLACE TABLE `ecommerce-pipeline-vitor.ecommerce_dw.dim_date` AS
WITH date_range AS (
    SELECT
        DATE(MIN(order_purchase_timestamp)) AS start_date,
        DATE(MAX(order_purchase_timestamp)) AS end_date
    FROM `ecommerce-pipeline-vitor.ecommerce_raw.raw_orders`
)

SELECT
    date AS date_key,
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(QUARTER FROM date) AS quarter,
    EXTRACT(MONTH FROM date) AS month,
    FORMAT_DATE('%B', date) AS month_name,
    EXTRACT(WEEK FROM date) AS week,
    EXTRACT(DAY FROM date) AS day,
    EXTRACT(DAYOFWEEK FROM date) AS day_of_week,
    FORMAT_DATE('%A', date) AS day_name
FROM date_range,
UNNEST(GENERATE_DATE_ARRAY(start_date, end_date)) AS date;
