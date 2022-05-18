import csv
import time
from pycoingecko import CoinGeckoAPI
cg = CoinGeckoAPI()
import os

while True:

    btc_data = cg.get_price(ids='bitcoin',
                          vs_currencies='usd', 
                          include_market_cap='false',
                          include_24hr_vol='false', 
                          include_last_updated_at='true')

    unix = str(btc_data["bitcoin"]["last_updated_at"])
    price = str(btc_data["bitcoin"]["usd"])  

    with open("addons/BTC_DATA.csv", "a")as btcfile:
        btcfile.write(unix)
        btcfile.write(",")
        btcfile.write(price)
        btcfile.write("\n")

    time.sleep(120)
