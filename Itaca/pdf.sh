#!/bin/bash

php ./generateDocs.php Itaca
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Itaca.html
pdftk './temp.pdf' update_info_utf8 './Itaca.txt' output '../Itaca.pdf' compress
#rm ./Itaca.html
rm ./Itaca.txt
rm ./temp.pdf