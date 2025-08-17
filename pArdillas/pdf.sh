#!/bin/bash

php ./generateDocs.php pArdillas
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./pArdillas.html
pdftk './temp.pdf' update_info_utf8 './pArdillas.txt' output '../pArdillas.pdf' compress
#rm ./pArdillas.html
rm ./temp.pdf