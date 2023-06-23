-- *CPC* gets like sum of spended divided by clicks count

select channel, safe_divide(sum(spend), sum(clicks)) as CPC
from {{ref('combined_data')}}
group by channel