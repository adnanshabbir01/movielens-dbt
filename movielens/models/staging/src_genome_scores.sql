{{ config(materialized='view') }}

with raw_genome_scores as (
  select * from movielens.public.raw_genome_scores
)
select 
  movieId as movie_id,
  tagId as tag_id,
  relevance
from raw_genome_scores
