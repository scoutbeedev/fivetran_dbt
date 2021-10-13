-- Use the `ref` function to select from other models

select *
from SB_DATABASE.SB_SHIPMENTS.my_first_dbt_model
where id = 1