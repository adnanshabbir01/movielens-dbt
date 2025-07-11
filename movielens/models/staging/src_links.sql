{{ config(materialized='view') }}

with raw_links as (
  select * from movielens.public.raw_links
)
select 
  movieId as movie_id,
  imdbId as imbd_id,
  tmdbId as tmdb_id
from raw_links
