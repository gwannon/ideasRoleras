#!/bin/bash

php ./generateDocs.php PasesBloqueos
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./PasesBloqueos.html
pdftk './temp.pdf' update_info_utf8 './PasesBloqueos.txt' output '../PasesBloqueos.pdf' compress
rm ./PasesBloqueos.html
rm ./temp.pdf

php ./generateDocs.php PasesBloqueosBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./PasesBloqueosBW.html
pdftk './temp.pdf' update_info_utf8 './PasesBloqueos.txt' output '../PasesBloqueosBW.pdf' compress
rm ./PasesBloqueosBW.html
rm ./AccPasesBloqueosBW.md
rm ./temp.pdf
