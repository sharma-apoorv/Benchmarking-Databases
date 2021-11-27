'''
This file automates downloading from the TranStats website and gets 
all the airlines data
'''

import requests
from bs4 import BeautifulSoup
from random import randint
from time import sleep
from tqdm import tqdm
import zipfile
import io

from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)


DL_URL = "http://transtats.bts.gov"
time_values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
year_values = [1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020]
db_short_name = 'On_Time'
table_name = 'Reporting_Carrier_On_Time_Performance_1987_present'

for yearvalue in tqdm(year_values):
    for timevalue in tqdm(time_values):
        zip_filename = db_short_name + "_" + table_name + "_"  + str(yearvalue) + "_" + str(timevalue) + ".zip"

        download_url = DL_URL + "/PREZIP/"  + zip_filename
        data = requests.get(download_url, verify=False)

        # print(download_url)
        with open(f'{yearvalue}_{timevalue}.zip', 'wb') as zipfile:
            zipfile.write(data.content)