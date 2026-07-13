#!/bin/bash

php ./generateDocs.php BicisRadiacion
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./BicisRadiacion.html
pdftk './temp.pdf' update_info_utf8 './BicisRadiacion.txt' output '../BicisRadiacion.pdf' compress
rm ./BicisRadiacion.html
rm ./temp.pdf

