#!/bin/bash

php ./generateDocs.php EntregaElPaquete
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./EntregaElPaquete.html
pdftk './temp.pdf' update_info_utf8 './EntregaElPaquete.txt' output '../EntregaElPaquete.pdf' compress
rm ./EntregaElPaquete.html
rm ./EntregaElPaquete.txt
rm ./temp.pdf
