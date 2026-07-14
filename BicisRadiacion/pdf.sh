#!/bin/bash

php ./generateDocs.php BicisRadiacion
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./BicisRadiacion.html
pdftk './temp.pdf' update_info_utf8 './BicisRadiacion.txt' output '../BicisRadiacion.pdf' compress
rm ./BicisRadiacion.html
rm ./temp.pdf

php ./generateDocs.php BicisRadiacionBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./BicisRadiacionBW.html
pdftk './temp.pdf' update_info_utf8 './BicisRadiacionBW.txt' output '../BicisRadiacionBW.pdf' compress
rm ./BicisRadiacionBW.html
rm ./AccBicisRadiacionBW.md
rm ./temp.pdf