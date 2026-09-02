CREATE OR REPLACE TABLE `ecommerce-pipeline-vitor.ecommerce_dw.dim_seller` AS
SELECT DISTINCT
    seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
FROM `ecommerce-pipeline-vitor.ecommerce_raw.raw_sellers`
WHERE seller_id IS NOT NULL;
