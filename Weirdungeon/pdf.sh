#!/bin/bash

php ./generateDocs.php MazmorraBinaria
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./MazmorraBinaria.html
pdftk './temp.pdf' update_info_utf8 './MazmorraBinaria.txt' output '../MazmorraBinaria.pdf' compress
rm ./MazmorraBinaria.txt
rm ./temp.pdf

php ./generateDocs.php MazmorraBinariaBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./MazmorraBinariaBW.html
pdftk './temp.pdf' update_info_utf8 './MazmorraBinariaBW.txt' output '../MazmorraBinariaBW.pdf' compress
rm ./MazmorraBinariaBW.txt
rm ./temp.pdf
rm ./MazmorraBinariaBW.html
rm ./AccMazmorraBinariaBW.md