#!/bin/bash

php ./generateDocs.php LaCola
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./LaCola.html
pdftk './temp.pdf' update_info_utf8 './LaCola.txt' output '../LaCola.pdf' compress
rm ./LaCola.html
rm ./temp.pdf

php ./generateDocs.php TheQueue
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TheQueue.html
pdftk './temp.pdf' update_info_utf8 './TheQueue.txt' output '../TheQueue.pdf' compress
rm ./TheQueue.html
rm ./temp.pdf