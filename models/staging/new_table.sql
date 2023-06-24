-- making new table with config function
{{
    config(
        materialized = 'table'
    )
}}

-- *Impressions by channel* is a sum of impressions for each channel

select channel, sum(impressions) as impression
from {{ref('combined_data')}}
group by channel