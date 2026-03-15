#!/bin/bash

php ./generateDocs.php CrimenCavernicola
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./CrimenCavernicola.html
pdftk './temp.pdf' update_info_utf8 './CrimenCavernicola.txt' output '../CrimenCavernicola.pdf' compress
rm ./CrimenCavernicola.html
rm ./CrimenCavernicola.txt
rm ./temp.pdf
