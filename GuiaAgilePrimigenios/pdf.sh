#!/bin/bash

php ./generateDocs.php GuiaAgileParaPrimigeniosSL
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./GuiaAgileParaPrimigeniosSL.html
pdftk './temp.pdf' update_info_utf8 './GuiaAgileParaPrimigeniosSL.txt' output '../GuiaAgileParaPrimigeniosSL.pdf' compress
rm ./GuiaAgileParaPrimigeniosSL.html
rm ./GuiaAgileParaPrimigeniosSL.txt
rm ./temp.pdf

php ./generateDocs.php GuiaAgileParaPrimigeniosSLBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./GuiaAgileParaPrimigeniosSLBW.html
pdftk './temp.pdf' update_info_utf8 './GuiaAgileParaPrimigeniosSLBW.txt' output '../GuiaAgileParaPrimigeniosSLBW.pdf' compress
rm ./GuiaAgileParaPrimigeniosSLBW.html
rm ./GuiaAgileParaPrimigeniosSLBW.txt
rm ./temp.pdf
rm ./AccGuiaAgileParaPrimigeniosSLBW.md