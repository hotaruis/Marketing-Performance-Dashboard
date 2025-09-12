--Create a CTE with Facebook Ads data by campaign and adset details
WITH Facebook_Ads AS 
(
SELECT ad_date
, FBC.campaign_name
, FBA.adset_name
, spend
, impressions
, reach
, clicks
, leads
, value
, NULL AS url_parameters
FROM public.facebook_ads_basic_daily AS FBD
  LEFT JOIN public.facebook_adset AS FBA
    ON FBD.adset_id = FBA.adset_id 
  LEFT JOIN public.facebook_campaign AS FBC
    ON FBD.campaign_id = FBC.campaign_id 
)

--Combine Facebook Ads data with Google Ads data
, All_Data AS 
(
SELECT ad_date
, campaign_name
, adset_name
, spend
, impressions
, reach
, clicks
, leads
, value
, url_parameters
FROM Facebook_Ads
UNION ALL
SELECT ad_date
, campaign_name
, adset_name
, spend
, impressions
, reach
, clicks
, leads
, value
, url_parameters
FROM public.google_ads_basic_daily 
)

--Сombined dataset
SELECT ad_date
, campaign_name
, adset_name
, spend
, impressions
, reach
, clicks
, leads
, value
, url_parameters
FROM All_Data