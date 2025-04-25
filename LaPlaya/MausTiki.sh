#!/bin/bash

php ./generateDocs.php MausTiki
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./MausTiki.html
pdftk './temp.pdf' update_info_utf8 './MausTiki.txt' output '../MausTiki.pdf' compress
rm ./MausTiki.html
rm ./MausTiki.txt
rm ./temp.pdf

#php ./generateDocs.php SuplementoMagiaTiki
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./SuplementoMagiaTiki.html
#pdftk './temp.pdf' update_info_utf8 './SuplementoMagiaTiki.txt' output '../SuplementoMagiaTiki.pdf' compress
#rm ./SuplementoMagiaTiki.html
#rm ./SuplementoMagiaTiki.txt
#rm ./temp.pdf

#php ./generateDocs.php SuplementoInventario
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./SuplementoInventario.html
#pdftk './temp.pdf' update_info_utf8 './SuplementoInventario.txt' output '../SuplementoInventario.pdf' compress
#rm ./SuplementoInventario.html
#rm ./SuplementoInventario.txt
#rm ./temp.pdf

php ./generateDocs.php SuplementoCreacionPJ
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./SuplementoCreacionPJ.html
pdftk './temp.pdf' update_info_utf8 './SuplementoCreacionPJ.txt' output '../SuplementoCreacionPJ.pdf' compress
rm ./SuplementoCreacionPJ.html
rm ./SuplementoCreacionPJ.txt
rm ./temp.pdf

php ./generateDocs.php SuplementoSurcarMares
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./SuplementoSurcarMares.html
pdftk './temp.pdf' update_info_utf8 './SuplementoSurcarMares.txt' output '../SuplementoSurcarMares.pdf' compress
rm ./SuplementoSurcarMares.html
rm ./SuplementoSurcarMares.txt
rm ./temp.pdf