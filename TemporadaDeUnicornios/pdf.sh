#!/bin/bash

php ./generateDocs.php TemporadaDeUnicornios
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TemporadaDeUnicornios.html
pdftk './temp.pdf' update_info_utf8 './TemporadaDeUnicornios.txt' output '../TemporadaDeUnicornios.pdf' compress
#rm ./TemporadaDeUnicornios.html
rm ./temp.pdf
