#!/bin/bash

php ./generateDocs.php LaCola
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./LaCola.html
pdftk './temp.pdf' update_info_utf8 './LaCola.txt' output '../LaCola.pdf' compress
rm ./LaCola.html
rm ./temp.pdf