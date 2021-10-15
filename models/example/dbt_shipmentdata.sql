
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select top 5
TO_VARCHAR(ARRIVAL_DATE,'HEX') AS ARRIVAL_DATE,
hex_decode_string(hex_encode(to_varchar(ARRIVAL_DATE,'HEX'))) AS ARRIVAL2

from sb_shipments.shipments_silver_old


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
