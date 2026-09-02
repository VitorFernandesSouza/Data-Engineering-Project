CREATE OR REPLACE TABLE `ecommerce-pipeline-vitor.ecommerce_dw.dim_product` AS
SELECT
    p.product_id,
    INITCAP(REPLACE(p.product_category_name, '_', ' ')) AS product_category_name,
    INITCAP(REPLACE(t.product_category_name_english, '_', ' ')) AS product_category_name_english,
    p.product_name_lenght,
    p.product_description_lenght,
    p.product_photos_qty,
    p.product_weight_g,
    p.product_length_cm,
    p.product_height_cm,
    p.product_width_cm
FROM `ecommerce-pipeline-vitor.ecommerce_raw.raw_products` p
LEFT JOIN `ecommerce-pipeline-vitor.ecommerce_raw.raw_category_translation` t
    ON p.product_category_name = t.product_category_name;
