

      create or replace transient table SB_DATABASE.SB_SHIPMENTS.dbt_shipmentdata  as
      (/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/



with source_data as (
     
    select '0000000000000000FC7A2500' as id
    union all
    select null as id
)

create proc Binary_to_DateTime ( 
    @mydate_bin binary
)
as begin 
SELECT CAST(@mydate_bin AS   DATETIME)
end 
select * from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
      );
    