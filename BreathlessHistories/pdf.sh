#!/bin/bash

php ./generateDocs.php ElRio
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./ElRio.html
pdftk './temp.pdf' update_info_utf8 './ElRio.txt' output './ElRio.pdf' compress
rm ./ElRio.html
rm ./temp.pdf

php ./generateDocs.php TheRiver
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TheRiver.html
pdftk './temp.pdf' update_info_utf8 './TheRiver.txt' output './TheRiver.pdf' compress
rm ./TheRiver.html
rm ./temp.pdf
