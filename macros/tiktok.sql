with source as (
  select *
  from {{ ref('src_ads_tiktok_ads_all_data') }}
),
transformation as (
  	select	
    		ad_id as ad_id,
    		add_to_cart as add_to_cart,
    		adgroup_id as adset_id,
    		campaign_id as campaign_id,
    		channel as channel,
    		clicks as clicks,
    		0 as comments,
    		0 as creative_id,
    		date as date,
    		0 as engagements,
    		impressions as impressions,
    		rt_installs + skan_app_install as installs,
    		0 as likes,
    		clicks as link_clicks,
    		0 as placement_id,
    		0 as post_click_conversions,
    		0 as post_view_conversions,
    		0 as posts,
    		purchase as purchase,
    		registrations as registrations,
    		0 as revenue,
    		0 as shares,
    		spend as spend,
    		conversions + skan_conversion as total_conversions,
    		video_views as video_views
  	from source
)

select * 
from transformation
