#!/bin/bash

#php ./generateDocs.php PasesBloqueos
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./PasesBloqueos.html
#pdftk './temp.pdf' update_info_utf8 './PasesBloqueos.txt' output '../PasesBloqueos.pdf' compress
#rm ./PasesBloqueos.html
#rm ./temp.pdf

#php ./generateDocs.php PasesBloqueosBW
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./PasesBloqueosBW.html
#pdftk './temp.pdf' update_info_utf8 './PasesBloqueos.txt' output '../PasesBloqueosBW.pdf' compress
#rm ./PasesBloqueosBW.html
#rm ./AccPasesBloqueosBW.md
#rm ./temp.pdf

php ./generateDocs.php PassesBlitzes
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./PassesBlitzes.html
pdftk './temp.pdf' update_info_utf8 './PassesBlitzes.txt' output '../PassesBlitzes.pdf' compress
rm ./PassesBlitzes.html
rm ./temp.pdf

php ./generateDocs.php PassesBlitzesBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./PassesBlitzesBW.html
pdftk './temp.pdf' update_info_utf8 './PassesBlitzes.txt' output '../PassesBlitzesBW.pdf' compress
rm ./PassesBlitzesBW.html
rm ./AccPassesBlitzesBW.md
rm ./temp.pdf
