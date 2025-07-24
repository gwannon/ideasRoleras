#!/bin/bash

php ./generateDocs.php EntregaElPaquete
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./EntregaElPaquete.html
pdftk './temp.pdf' update_info_utf8 './EntregaElPaquete.txt' output '../EntregaElPaquete.pdf' compress
rm ./EntregaElPaquete.html
rm ./EntregaElPaquete.txt
rm ./temp.pdf

php ./generateDocs.php DeliverThePackage
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./DeliverThePackage.html
pdftk './temp.pdf' update_info_utf8 './DeliverThePackage.txt' output '../DeliverThePackage.pdf' compress
rm ./DeliverThePackage.html
rm ./DeliverThePackage.txt
rm ./temp.pdf
