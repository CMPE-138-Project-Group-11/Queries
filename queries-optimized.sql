/**In Respective Order Of The Queries In The queries.sql File */
-----------------------------------------------------------------------------------------
SELECT
  product_description AS Product_Recalled,
  product_type AS Product_Type,
  reason_for_recall AS Reason,
  recall_initiation_date AS Date_Started
FROM
  `bigquery-public-data.fda_food.food_enforcement`
WHERE
  recall_initiation_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR)
ORDER BY
  recall_initiation_date DESC;

--------------------------------------------------------------------------------------

SELECT product_description as Product_Recalled,
       recall_number as Recall_Number,
       product_type as Product_Type,
       reason_for_recall as Reason,
       recall_initiation_date as Date_Started
FROM `bigquery-public-data.fda_food.food_enforcement`
WHERE product_description LIKE 'BTREX%'

-----------------------------------------------------------------------------------------
SELECT
    products_brand_name as product_brand,
    report_number,
    reactions,
    outcomes,
    date_started as occurred
FROM
    `bigquery-public-data.fda_food.food_events`
WHERE
    UPPER(products_brand_name) LIKE '%FLINTSTONES%'
    OR UPPER(reactions) LIKE '%PARKINSONS%'
ORDER BY
    date_started DESC;
