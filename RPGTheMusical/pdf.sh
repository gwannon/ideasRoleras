#!/bin/bash

php ./generateDocs.php RPGTheMusical
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./RPGTheMusical.html
pdftk './temp.pdf' update_info_utf8 './metasRPGTheMusical.txt' output '../RPGTheMusical.pdf' compress
rm ./RPGTheMusical.html
rm ./temp.pdf

php ./generateDocs.php JdRElMusical
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./JdRElMusical.html
pdftk './temp.pdf' update_info_utf8 './metasJdRElMusical.txt' output '../JdRElMusical.pdf' compress
rm ./JdRElMusical.html
rm ./temp.pdf