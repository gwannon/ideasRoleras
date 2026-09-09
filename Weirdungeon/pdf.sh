#!/bin/bash

php ./generateDocs.php MazmorraBinaria
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./MazmorraBinaria.html
pdftk './temp.pdf' update_info_utf8 './MazmorraBinaria.txt' output '../MazmorraBinaria.pdf' compress
rm ./MazmorraBinaria.txt
rm ./temp.pdf
#rm ./MazmorraBinaria.html
#rm ../MazmorraBinaria.pdf

