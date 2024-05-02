--start here
SELECT product_description as Product_Recalled, product_type as Product_Type, reason_for_recall as Reason, recall_initiation_date as Date_Started FROM `bigquery-public-data.fda_food.food_enforcement` ORDER BY recall_initiation_date DESC 
SELECT product_description as Product_Recalled,recall_number as Recall_Number, product_type as Product_Type, reason_for_recall as Reason, recall_initiation_date as Date_Started FROM `bigquery-public-data.fda_food.food_enforcement` WHERE product_description LIKE '%BTREX%'
SELECT products_brand_name as product_brand, report_number, reactions, outcomes, date_started as occurred FROM `bigquery-public-data.fda_food.food_events` WHERE UPPER(products_brand_name) LIKE UPPER('%flintstones%') OR UPPER(reactions) LIKE UPPER('%parkinsons%') ORDER BY date_started DESC
SELECT products_brand_name as product_brand, report_number, reactions, outcomes, date_started as occurred FROM `bigquery-public-data.fda_food.food_events` WHERE UPPER(products_brand_name) LIKE REPLACE(CONCAT('%',UPPER('fatigue heart nausea'),'%'), ' ', '%') OR UPPER(reactions) LIKE REPLACE(CONCAT('%',UPPER('fatigue heart nausea'),'%'), ' ', '%') ORDER BY date_started DESC
SELECT product_description as Product_Recalled, recall_number as Recall_Number, product_type as Product_Type, reason_for_recall as Reason, recall_initiation_date as Date_Started FROM `bigquery-public-data.fda_food.food_enforcement` WHERE UPPER(product_description) LIKE REPLACE(CONCAT('%',UPPER('dietary 2 caplets 05380930802'),'%'), ' ', '%') ORDER BY recall_initiation_date DESC
