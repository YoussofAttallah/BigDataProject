import twint
import pandas as pd

df = pd.read_csv("TopList.csv")
top_animes = ['naruto', 'one piece', 'black clover', 'boruto', 'jujutsu kaisen', 'attack on titan',
              'hunter x hunter', 'bleach', 'my hero academia', 'tokyo revengers', 'demon slayer']
for anime in top_animes:
    file_name = anime+'.csv'
    c = twint.Config()
    c.Search = anime
    c.Limit = 10000
    c.Store_csv = True
    c.Output = file_name
    c.Lang = 'en'
    twint.run.Search(c)
# c = twint.Config()
# c.Search = "naruto"
# c.Limit = 10
# c.Store_csv = True
# c.Output = "Test1111.csv"
# twint.run.Search(c)
