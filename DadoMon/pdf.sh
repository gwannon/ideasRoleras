#!/bin/bash

php ./generateDocs.php DadoMon
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./DadoMon.html
pdftk './temp.pdf' update_info_utf8 './DadoMon.txt' output '../DadoMon.pdf' compress
#rm ./DadoMon.html
rm ./DadoMon.txt
rm ./temp.pdf