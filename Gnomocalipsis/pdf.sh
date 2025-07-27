#!/bin/bash

php ./generateDocs.php Gnomocalipsis
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Gnomocalipsis.html
pdftk './temp.pdf' update_info_utf8 './Gnomocalipsis.txt' output '../Gnomocalipsis.pdf' compress
#rm ./Gnomocalipsis.html
rm ./temp.pdf

php ./generateDocs.php Gnomecalypse
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Gnomecalypse.html
pdftk './temp.pdf' update_info_utf8 './Gnomecalypse.txt' output '../Gnomecalypse.pdf' compress
#rm ./Gnomecalypse.html
rm ./temp.pdf

