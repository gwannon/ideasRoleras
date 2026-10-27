#!/bin/bash

php ./generateDocs.php ModernWorld
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./ModernWorld.html
pdftk './temp.pdf' update_info_utf8 './ModernWorld.txt' output '../ModernWorld.pdf' compress
#rm ./ModernWorld.html
#rm ../ModernWorld.pdf
rm ./ModernWorld.txt
rm ./temp.pdf

php ./generateDocs.php ModernWorldEN
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./ModernWorldEN.html
pdftk './temp.pdf' update_info_utf8 './ModernWorldEN.txt' output '../ModernWorldEN.pdf' compress
#rm ./ModernWorldEN.html
#rm ../ModernWorldEN.pdf
rm ./ModernWorldEN.txt
rm ./temp.pdf

