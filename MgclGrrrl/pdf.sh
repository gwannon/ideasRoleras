#!/bin/bash

php ./generateDocs.php Megamonstruo
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Megamonstruo.html
pdftk './temp.pdf' update_info_utf8 './Megamonstruo.txt' output '../Megamonstruo.pdf' compress
#rm ./Megamonstruo.html
rm ./Megamonstruo.txt
rm ./temp.pdf
