#!/bin/bash

php ./generateDocs.php EnElHades
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./EnElHades.html
pdftk './temp.pdf' update_info_utf8 './EnElHades.txt' output '../EnElHades.pdf' compress
rm ./EnElHades.html
rm ./EnElHades.txt
rm ./temp.pdf

php ./generateDocs.php InHades
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./InHades.html
pdftk './temp.pdf' update_info_utf8 './InHades.txt' output '../InHades.pdf' compress
rm ./InHades.html
rm ./InHades.txt
rm ./temp.pdf