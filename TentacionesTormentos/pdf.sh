#!/bin/bash

php ./generateDocs.php TentacionesTormentos
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TentacionesTormentos.html
pdftk './temp.pdf' update_info_utf8 './TentacionesTormentos.txt' output '../TentacionesTormentos.pdf' compress
#rm ./TentacionesTormentos.html
rm ./temp.pdf