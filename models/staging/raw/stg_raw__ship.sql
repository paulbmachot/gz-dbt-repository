with source as (
    select *
    from {{ source('raw', 'ship') }}
),
cleaned as (
    select
        orders_id,
        shipping_fee,
        logCost as log_cost,
        cast(ship_cost as FLOAT64) as ship_cost
    from source
    where shipping_fee is not null
)
select *
from cleaned





