create database if not exists anime_tweets_db;
use anime_tweets_db;
create external table if not exists anime_tweets (
  anime_name string,
  id string,
  conversation_id string,
  created_at string,
  date_tweet string,
  time_tweet string,
  timezone string,
  user_id string,
  username string,
  name string,
  place string,
  tweet string,
  language string,
  mentions string,
  urls string,
  photos string,
  replies_count int,
  retweets_count int,
  likes_count int,
  hashtags string, 
  cashtags string, 
  link string,
  retweet string,
  quote_url string,
  video string,
  thumbnail string,
  near string,
  geo string,
  source string, 
  user_rt_id string,
  user_rt string,
  retweet_id string,
  reply_to string,
  retweet_date string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/anime_tweets_db/anime_tweets';