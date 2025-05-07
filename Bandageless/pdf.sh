#!/bin/bash

php ./generateDocs.php BandagelessES
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./BandagelessES.html
pdftk './temp.pdf' update_info_utf8 './BandagelessES.txt' output '../BandagelessES.pdf' compress
rm ./BandagelessES.html
rm ./temp.pdf
