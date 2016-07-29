# import all required packages
import csv
import requests
from bs4 import BeautifulSoup  # Need to use the latest version of BeautifulSoup

# Removes any elements, specified by elem parameter, from list a_list
def remove_elements(a_list, elem):
    b_list = []
    for list_elem in a_list:
        if list_elem != elem:
            b_list.append(list_elem)
    return b_list


# It should be noticed that for these particular webpages, the header variable names can be extracted from the links
# that they are embedded in. All other data values are found within a table with specific bg values.
def format_table(my_table):
    list_of_rows = []
    header_table = my_table.find_all('tr')[0]
    header_links = header_table.find_all('a')
    header = [each.text for each in header_links]
    header = remove_elements(header, '')
    header.append('')
    list_of_rows.append(header)

    # Skips the first two tag which is the header <tr><th> to be written later, and a bunch of other junk I don't need
    for row in my_table.find_all('tr')[2:]:
        list_of_cells = []
        for cell in row.find_all('td'):
            text = cell.text.replace('&nbsp', '')
            list_of_cells.append(text.encode('ascii', 'replace'))
        list_of_cells.append('')
        list_of_rows.append(list_of_cells)
    return list_of_rows


def write_to_csv(a_list, year):
    data_file = open("All Movies - %s Domestic Grosses.csv" % year, 'w')
    for each_list in a_list:
        writer = csv.writer(data_file)
        writer.writerows(each_list)
    data_file.close()


def get_html_page(url, parameters):
    response = requests.get(url, params=parameters)
    return BeautifulSoup(response.content, 'html.parser')  # Will throw warning if no parser is specified


if __name__ == "__main__":

    url = 'http://www.boxofficemojo.com/yearly/chart/'
    format_data_as_list = []
    year = 2010
    paramsDict = {'yr': year, 'view': 'releasedate', 'view2': 'domestic'}

    soup = get_html_page(url, paramsDict)
    my_data = soup.find('table', attrs={"bgcolor": "#ffffff"})
    format_data_as_list.append(format_table(my_data))

    soup.center
    num_pages = soup.center.find_all('a')
    new_length = len(num_pages) + 1
    
    for i in range(2, new_length+1):
        paramsDict['page'] = i
        soup = get_html_page(url, paramsDict)

        # !!!! Seems to be the only way to get the data I need!!!
        my_data = soup.find('table', attrs={"bgcolor": "#ffffff"})

        format_data_as_list.append(format_table(my_data))
		
	write_to_csv(format_data_as_list, year)
    print "Success"
