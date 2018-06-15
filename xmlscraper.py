import bs4 as bs
import urllib.request
import os
import codecs
import xlsxwriter
from selenium import webdriver

workbook =xlsxwriter.Workbook('data.xlsx')

def getLongerText(f):
    src1 = open("./"+f,encoding="iso-8859-1").read()
    sp1 = bs.BeautifulSoup(src1,'lxml')
    ft = sp1.find(label="Beschreibung")
    #print(ft)
    return ft.text


def populateSheet(fileName):
    print("--------------------------")
    src = open("./"+fileName,encoding="iso-8859-1").read()
    sp = bs.BeautifulSoup(src,'lxml')
    docdata = sp.find('docdata')
    title = sp.find('title').text
    sheetName = docdata['name']#+" - "+title
    worksheet = workbook.add_worksheet(sheetName[0:20])
    cell_format = workbook.add_format({'bold': True})
    worksheet.write("A1", "Name",cell_format)
    worksheet.write("B1", "Titel",cell_format)
    worksheet.write("C1", "Occurs",cell_format)
    for idx,tr in enumerate(sp.find_all('tabrow')):
        cols = tr.find_all('tabentry')
        #print(cols[0].text,cols[1].text,cols[2].text)
        idx=idx+1;
        worksheet.write("A"+str(idx+1), cols[0].text)
        #print(tr['link'])
        if cols[1].text.find("...") != -1:
            worksheet.write("B"+str(idx+1), getLongerText(tr['link'].replace(".\../","")))
        else:
            worksheet.write("B"+str(idx+1), cols[1].text)
        worksheet.write("C"+str(idx+1), cols[2].text)
        #break
    print("--------------------------")

source = open('./liste/bmwTabIndex.xml',encoding="iso-8859-1").read()
soup = bs.BeautifulSoup(source,'lxml')

for tabrow in soup.find_all('tabrow'):
    populateSheet(tabrow['link'].replace(".\../",""))
    #break

workbook.close()
