-- *Conversion cost* is calculated by dividing sum of spended by total conversions count

select channel, safe_divide(sum(spend), sum(total_conversions)) as conversion_cost 
from {{ref('combined_data')}}
group by channel