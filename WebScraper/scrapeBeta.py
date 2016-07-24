# import all required packages
import csv
import requests
from selenium import webdriver
from BeautifulSoup import BeautifulSoup

url = 'https://report.boonecountymo.org/mrcjava/servlet/SH01_MP.I00290s'

#response = requests.get(url)
#html = response.content
#print html

driver = webdriver.Chrome() # Chromium.exe driver must be specified in PATH
html = driver.get(url)

soup = BeautifulSoup(html)
#print soup.prettify()
table = soup.find('tbody', attrs={'class': 'stripe'})

list_of_rows = []
#Skips the first tag which is the header <tr><th> to be written later
for row in table.findAll('tr')[1:]:
	#print row.prettify()
	list_of_cells = []
	for cell in row.findAll('td'):
		#print cell.text.replace('&nbsp', '')
		text = cell.text.replace('&nbsp', '')
		list_of_cells.append(text)
	list_of_rows.append(list_of_cells)

file = open("Current Detainees of Boone County Jail.csv", 'w')
writer = csv.writer(file)

# Writing header of table before writing tabulated data
writer.writerow(["Details", "Last", "First", "Middle", "Gender", "Race", "Age", "City", "State"])
writer.writerows(list_of_rows)