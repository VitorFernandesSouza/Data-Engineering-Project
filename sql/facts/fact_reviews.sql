CREATE OR REPLACE TABLE `ecommerce-pipeline-vitor.ecommerce_dw.fact_reviews` AS
SELECT
    review_id,
    order_id,
    review_score,
    review_comment_title,
    review_comment_message,
    review_creation_date,
    review_answer_timestamp
FROM `ecommerce-pipeline-vitor.ecommerce_raw.raw_order_reviews`
WHERE order_id IS NOT NULL;
