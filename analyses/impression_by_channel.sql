-- *Impressions by channel* is a sum of impressions for each channel

select channel, sum(impressions) as impression_by_channel
from {{ref('combined_data')}}
group by channel