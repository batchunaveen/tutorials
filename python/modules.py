
# Create modules 
import datetime 
from datetime import date 
import time 
from time import time 


# Pip module 
from camelcase import Camelcase 

today = date.today()
timestamp = time() 

c = Camelcase()
print(c.hump('hello there world'))

print(timestamp)
print(today)