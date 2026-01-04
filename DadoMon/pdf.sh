#!/bin/bash

php ./generateDocs.php DadoMon
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./DadoMon.html
pdftk './temp.pdf' update_info_utf8 './DadoMon.txt' output '../DadoMon.pdf' compress
#rm ./DadoMon.html
rm ./DadoMon.txt
rm ./temp.pdf

php ./generateDocs.php PrimerasAndanzas
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./PrimerasAndanzas.html
pdftk './temp.pdf' update_info_utf8 './PrimerasAndanzas.txt' output '../PrimerasAndanzas.pdf' compress
#rm ./PrimerasAndanzas.html
rm ./PrimerasAndanzas.txt
rm ./temp.pdf
