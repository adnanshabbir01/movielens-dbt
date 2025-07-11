{{ config(materialized='view') }}

with raw_ratings as (
  select * from movielens.public.raw_ratings
)
select 
  userId as user_id,
  movieId as movie_id,
  rating,
  TO_TIMESTAMP_LTZ(timestamp) as rating_timestamp
from raw_ratings
