# import all required packages
import csv
import requests
from bs4 import BeautifulSoup  # Need to use the latest version of BeautifulSoup

# Removes any elements, specified by elem parameter, from list a_list
def remove_elements(a_list, elem):
    b_list = []
    for each_elem in a_list:
        if each_elem != elem:
            b_list.append(each_elem)
    return b_list


# It should be noticed that for these particular webpages, the header variable names can be extracted from the links
# that they are embedded in. All other data values are found within a table with specific bg values.
def get_header(my_table):
    header_table = my_table.find_all('tr')[0]
    header_links = header_table.find_all('a')
    header = [each.text for each in header_links]
    header = remove_elements(header, '')
    return [header]

# It should be noticed that for these particular webpages, the header variable names can be extracted from the links
# that they are embedded in. All other data values are found within a table with specific bg values.
def scrape_data(my_table):
    list_of_rows = []
    # Skips the first two tags which include the header <tr><th> to be written later and a selection list of production companies.
    for row in my_table.find_all('tr')[2:]:
        list_of_cells = []
        for cell in row.find_all('td'):
            text = cell.text.replace('&nbsp', '')
            list_of_cells.append(text.encode('ascii', 'replace'))
        list_of_rows.append(list_of_cells)
		# The last 4 list elements are a summary of the table and are not needed
    return list_of_rows[:-4]


def write_to_csv(a_list):
    data_file = open("All Movies Domestic Grosses.csv", 'w')
    for each_list in a_list:
        writer = csv.writer(data_file)
        writer.writerows(each_list)
    data_file.close()


def get_html_page(url, parameters):
    response = requests.get(url, params=parameters)
    return BeautifulSoup(response.content, 'html.parser')  # Will throw warning if no parser is specified


if __name__ == "__main__":
	url = 'http://www.boxofficemojo.com/yearly/chart/'
	movie_list = []
	year = [2010, 2011, 2012, 2013, 2014, 2015]
	paramsDict = {'yr': year[0], 'view': 'releasedate', 'view2': 'domestic'}

	# soup.center contains the links to the other page lists within the year. The number of links + 1 is equal to the total number of pages I need to iterate over.
	# This only needs to be performed once.
	soup = get_html_page(url, paramsDict) # dup
	num_pages = soup.center.find_all('a') # dup
	new_length = len(num_pages) + 1		  # dup
	head_data = get_header(soup.find('table', attrs={"bgcolor":"#ffffff"}))
	movie_list.append(head_data);

	for each_yr in year:
		paramsDict['yr'] = each_yr
		soup = get_html_page(url, paramsDict) # dup
		num_pages = soup.center.find_all('a') # dup
		new_length = len(num_pages) + 1		  # dup
		for i in range(1, new_length+1):
			paramsDict['page'] = i
			soup = get_html_page(url, paramsDict)
			# !!!! Seems to be the only way to get the data I need!!!
			my_data = soup.find('table', attrs={"bgcolor": "#ffffff"})
			movie_list.append(scrape_data(my_data))

	write_to_csv(movie_list)
	print "Success"