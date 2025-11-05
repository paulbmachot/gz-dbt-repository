with source as (
    select *
    from {{ source('raw', 'ship') }}
),
cleaned as (
    select
        orders_id,
        shipping_fee,
        ship_cost
    from source
    where shipping_fee is not null
)
select *
from cleaned





