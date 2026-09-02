CREATE OR REPLACE TABLE `ecommerce-pipeline-vitor.ecommerce_dw.dim_geolocation` AS
SELECT DISTINCT
    geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state
FROM `ecommerce-pipeline-vitor.ecommerce_raw.raw_geolocation`
WHERE geolocation_zip_code_prefix IS NOT NULL;
