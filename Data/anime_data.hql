create database if not exists anime_data_db;
use anime_data_db;
create external table if not exists anime_data (
  index int,
  link string,
  title string,
  ep_number string,
  alias string,
  description string,
  type string,
  studio string,
  start_date string,
  end_date string,
  status string,
  genres string,
  country string,
  score double,
  number_of_reviewers int,
  debut_season string,
  debut_year int,
  avg_ep_length int,
  quality string,
  views int
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/anime_data_db/anime_data';