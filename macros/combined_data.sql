select *
from {{ ref('bing') }}

union all

select *
from {{ ref('facebook') }}

union all

select *
from {{ ref('tiktok') }}

union all

select *
from {{ ref('twitter') }}