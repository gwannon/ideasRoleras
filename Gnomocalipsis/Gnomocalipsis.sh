#!/bin/bash

php ./generateDocs.php Gnomocalipsis
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Gnomocalipsis.html
pdftk './temp.pdf' update_info_utf8 './Gnomocalipsis.txt' output '../Gnomocalipsis.pdf' compress
rm ./Gnomocalipsis.html
rm ./temp.pdf

