#!/bin/bash

php ./generateDocs.php MausTiki
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./MausTiki.html
pdftk './temp.pdf' update_info_utf8 './MausTiki.txt' output '../MausTiki.pdf' compress
#rm ./MausTiki.html
rm ./MausTiki.txt
rm ./temp.pdf


php ./generateDocs.php SuplementoMagiaTiki
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./SuplementoMagiaTiki.html
pdftk './temp.pdf' update_info_utf8 './SuplementoMagiaTiki.txt' output '../SuplementoMagiaTiki.pdf' compress
rm ./SuplementoMagiaTiki.html
rm ./SuplementoMagiaTiki.txt
rm ./temp.pdf
