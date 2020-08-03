# import pandas to handle data, censusgeocode to geocode batches

import censusgeocode
import pandas as pd
import requests

path = './files'

df = pd.read_csv("student_address_tract.txt", sep = "|", encoding = 'unicode_escape', dtype=str)

print(df.head)

for index, row in df.iterrows():
    result = censusgeocode.onelineaddress(row[3] + ',' + row[4] + ',' + row[5], returntype='locations')
    # result = cg.address(row[3], city=row[4], state=row[5], zipcode=row[6])
    print(result)
