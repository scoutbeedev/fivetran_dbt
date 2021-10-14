
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

create or replace table sb_shipments.new_shipmentdate as 
select TOP 5
        ARRIVAL_DATE
        PURCHASER_NAME
from SB_SHIPMENTS.SHIPMENTS_SILVER_OLD

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
