#!/bin/bash

php ./generateDocs.php MausTiki
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./MausTiki.html
pdftk './temp.pdf' update_info_utf8 './MausTiki.txt' output '../MausTiki.pdf' compress
rm ./MausTiki.html
rm ./MausTiki.txt
rm ./temp.pdf

php ./generateDocs.php Mapas
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Mapas.html
pdftk './temp.pdf' update_info_utf8 './Mapas.txt' output '../Mapas.pdf' compress
rm ./Mapas.html
rm ./Mapas.txt
rm ./temp.pdf

php ./generateDocs.php Recursos
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Recursos.html
pdftk './temp.pdf' update_info_utf8 './Recursos.txt' output '../Recursos.pdf' compress
rm ./Recursos.html
rm ./Recursos.txt
rm ./temp.pdf