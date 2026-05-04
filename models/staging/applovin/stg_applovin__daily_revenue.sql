-- Staging model for AppLovin daily revenue
-- Light wrapper over raw data; just selects all columns from the source.
-- Materialized as a view (no storage cost).

{{ config(materialized='view') }}

SELECT *
FROM {{ source('applovin_data', 'applovin_daily_revenue') }}
