-- *Cost per engage* is just a spended sum divided by sum of engagements

select channel, safe_divide(sum(spend), sum(engagements)) as cost_per_engage 
from {{ref('combined_data')}}
group by channel