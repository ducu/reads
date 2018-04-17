#!/bin/bash
## Export RSS feeds from Goodreads

wget -O 2016.xml "https://www.goodreads.com/review/list_rss/7653898?key=jKRjunRbdCP3r1O6CxQ4kJxlqobeeQw9tjQc2JtmMLqhFJBa&shelf=2016"
wget -O 2017.xml "https://www.goodreads.com/review/list_rss/7653898?key=jKRjunRbdCP3r1O6CxQ4kJxlqobeeQw9tjQc2JtmMLqhFJBa&shelf=2017"
wget -O 2018.xml "https://www.goodreads.com/review/list_rss/7653898?key=jKRjunRbdCP3r1O6CxQ4kJxlqobeeQw9tjQc2JtmMLqhFJBa&shelf=2018"
wget -O currently.xml "https://www.goodreads.com/review/list_rss/7653898?key=jKRjunRbdCP3r1O6CxQ4kJxlqobeeQw9tjQc2JtmMLqhFJBa&shelf=currently-reading"