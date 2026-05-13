#!/bin/bash

php ./generateDocs.php SoloEnCasa
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./SoloEnCasa.html
pdftk './temp.pdf' update_info_utf8 './SoloEnCasa.txt' output '../SoloEnCasa.pdf' compress
rm ./SoloEnCasa.html
rm ./SoloEnCasa.txt
rm ./temp.pdf

php ./generateDocs.php SoloEnCasaBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./SoloEnCasaBW.html
pdftk './temp.pdf' update_info_utf8 './SoloEnCasaBW.txt' output '../SoloEnCasaBW.pdf' compress
rm ./SoloEnCasaBW.html
rm ./SoloEnCasaBW.txt
rm ./temp.pdf