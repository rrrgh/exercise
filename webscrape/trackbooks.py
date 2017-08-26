#!/usr/bin/python -tt
# -*- coding: utf-8 -*-

from lxml import html
import requests

bookinfolist = []

#book1
page = requests.get('https://www.manning.com/books/c-plus-plus-concurrency-in-action-second-edition')
tree = html.fromstring(page.content)

bookinfo = {'title':'','subtitle':'','isbn':'','progress_text':'','publish_when':''}
raw_html_content = tree.xpath('//*[@id="top"]/div[1]/div/div/div/div[1]/div/div[1]/text()')
for item in raw_html_content:
    item = item.strip().replace('\n','')
    if item:
        bookinfo['title'] = item

raw_html_content = tree.xpath('//*[@id="top"]/div[1]/div/div/div/div[1]/div/div[2]/div/ul[2]/li[1]/text()')
for item in raw_html_content:
    item = item.strip().replace('\n','')
    if item:
        bookinfo['isbn'] = item

#6 of 11 chapters available
raw_html_content = tree.xpath('//*[@id="top"]/div[1]/div/div/div/div[3]/div/div[3]/div[1]/div[3]/p/text()')
for item in raw_html_content:
    item = item.strip().replace('\n','')
    if item:
        bookinfo['progress_text'] = item

#Publication in Fall 2017 (estimated)
raw_html_content = tree.xpath('//*[@id="top"]/div[1]/div/div/div/div[1]/div/div[2]/div/ul[1]/li[2]/text()')
for item in raw_html_content:
    item = item.strip().replace('\n','')
    if item:
        bookinfo['publish_when'] = item

#todo
#progress bar how-to?
#//*[@id="top"]/div[1]/div/div/div/div[3]/div/div[3]/div[1]/div[3]/div/span[10]

bookinfolist.append(bookinfo.copy())

#book2
page = requests.get('https://www.manning.com/books/java-8-and-9-in-action')
tree = html.fromstring(page.content)

bookinfo = {'title':'','subtitle':'','isbn':'','progress_text':'','publish_when':''}
raw_html_content = tree.xpath('//*[@id="top"]/div[1]/div/div/div/div[1]/div/div[1]/text()')
for item in raw_html_content:
    item = item.strip().replace('\n','')
    if item:
        bookinfo['title'] = item

raw_html_content = tree.xpath('//*[@id="top"]/div[1]/div/div/div/div[1]/div/div[2]/text()')
for item in raw_html_content:
    item = item.strip().replace('\n','')
    if item:
        bookinfo['subtitle'] = item

raw_html_content = tree.xpath('//*[@id="top"]/div[1]/div/div/div/div[1]/div/div[3]/div/ul[2]/li[1]/text()')
for item in raw_html_content:
    item = item.strip().replace('\n','')
    if item:
        bookinfo['isbn'] = item

raw_html_content = tree.xpath('//*[@id="top"]/div[1]/div/div/div/div[3]/div/div[3]/div[1]/div[3]/p/text()')
for item in raw_html_content:
    item = item.strip().replace('\n','')
    if item:
        bookinfo['progress_text'] = item

raw_html_content = tree.xpath('//*[@id="top"]/div[1]/div/div/div/div[1]/div/div[3]/div/ul[1]/li[2]/text()')
for item in raw_html_content:
    item = item.strip().replace('\n','')
    if item:
        bookinfo['publish_when'] = item

bookinfolist.append(bookinfo.copy())

#print 'title:',title
#print 'ISBN:',isbn
#print 'progress_text:',progress_text
#print 'publish_when:',publish_when
for book in bookinfolist:
    print book
