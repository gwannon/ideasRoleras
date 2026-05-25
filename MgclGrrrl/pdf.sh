#!/bin/bash

php ./generateDocs.php Megamonstruo
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Megamonstruo.html
pdftk './temp.pdf' update_info_utf8 './Megamonstruo.txt' output '../Megamonstruo.pdf' compress
rm ./Megamonstruo.html
rm ./Megamonstruo.txt
rm ./temp.pdf

php ./generateDocs.php MegamonstruoBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./MegamonstruoBW.html
pdftk './temp.pdf' update_info_utf8 './MegamonstruoBW.txt' output '../MegamonstruoBW.pdf' compress
rm ./MegamonstruoBW.html
rm ./MegamonstruoBW.txt
rm ./AccMegamonstruoBW.md
rm ./temp.pdf