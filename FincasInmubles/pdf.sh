#!/bin/bash

php ./generateDocs.php FincasInmuebles
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./FincasInmuebles.html
pdftk './temp.pdf' update_info_utf8 './FincasInmuebles.txt' output '../FincasInmuebles.pdf' compress
#rm ./FincasInmuebles.html
rm ./FincasInmuebles.txt
rm ./temp.pdf