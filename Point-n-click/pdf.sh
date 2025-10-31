#!/bin/bash

php ./generateDocs.php Point-n-click
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Point-n-click.html
pdftk './temp.pdf' update_info_utf8 './Point-n-click.txt' output '../Point-n-click.pdf' compress
#rm ./Point-n-click.html
rm ./Point-n-click.txt
rm ./temp.pdf