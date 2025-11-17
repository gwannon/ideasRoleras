#!/bin/bash

#php ./generateDocs.php Point-n-click
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Point-n-click.html
#pdftk './temp.pdf' update_info_utf8 './Point-n-click.txt' output '../Point-n-click.pdf' compress
#rm ./Point-n-click.txt
#rm ./temp.pdf

#php ./generateDocs.php Point-n-clickEN
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Point-n-clickEN.html
#pdftk './temp.pdf' update_info_utf8 './Point-n-clickEN.txt' output '../Point-n-clickEN.pdf' compress
#rm ./Point-n-clickEN.txt
#rm ./temp.pdf

php ./generateDocs.php MisterioDeLaPeninsulaDelSimio
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./MisterioDeLaPeninsulaDelSimio.html
#pdftk './temp.pdf' update_info_utf8 './MisterioDeLaPeninsulaDelSimio.txt' output '../MisterioDeLaPeninsulaDelSimio.pdf' compress
rm ./MisterioDeLaPeninsulaDelSimio.txt
#rm ./temp.pdf