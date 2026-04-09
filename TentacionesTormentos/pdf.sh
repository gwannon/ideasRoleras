#!/bin/bash

php ./generateDocs.php TentacionesTormentos
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TentacionesTormentos.html
pdftk './temp.pdf' update_info_utf8 './TentacionesTormentos.txt' output '../TentacionesTormentos.pdf' compress
rm ./TentacionesTormentos.html
rm ./temp.pdf

php ./generateDocs.php TentacionesTormentosBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TentacionesTormentosBW.html
pdftk './temp.pdf' update_info_utf8 './TentacionesTormentos.txt' output '../TentacionesTormentosBW.pdf' compress
rm ./TentacionesTormentosBW.html
rm ./AccTentacionesTormentosBW.md
rm ./temp.pdf

php ./generateDocs.php TemptationsTorments
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TemptationsTorments.html
pdftk './temp.pdf' update_info_utf8 './TemptationsTorments.txt' output '../TemptationsTorments.pdf' compress
rm ./TemptationsTorments.html
rm ./temp.pdf

php ./generateDocs.php TemptationsTormentsBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TemptationsTormentsBW.html
pdftk './temp.pdf' update_info_utf8 './TemptationsTorments.txt' output '../TemptationsTormentsBW.pdf' compress
rm ./TemptationsTormentsBW.html
rm ./AccTemptationsTormentsBW.md
rm ./temp.pdf