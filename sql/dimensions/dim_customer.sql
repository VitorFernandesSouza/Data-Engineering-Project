CREATE OR REPLACE TABLE `ecommerce-pipeline-vitor.ecommerce_dw.dim_customer` AS
SELECT DISTINCT
    TRIM(customer_id)              AS id,
    TRIM(customer_unique_id)       AS unique_id,
    TRIM(customer_zip_code_prefix) AS zip_code,
    TRIM(customer_city)            AS city,
    UPPER(TRIM(customer_state))    AS state
FROM 
    `ecommerce-pipeline-vitor.ecommerce_raw.raw_customers`
WHERE 
    customer_id IS NOT NULL
    AND customer_unique_id IS NOT NULL;