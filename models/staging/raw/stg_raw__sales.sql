with source as (
    select *
    from {{ source('raw', 'sales') }}
),
cleaned as (
    select
        date_date as order_date,
        orders_id as order_id,
        pdt_id as products_id,
        revenue as total_amount,
        quantity
    from source
)
select *
from cleaned
