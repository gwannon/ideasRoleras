#!/bin/bash

php ./generateDocs.php HintsHijinx
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./HintsHijinx.html
pdftk './temp.pdf' update_info_utf8 './HintsHijinx.txt' output '../HintsHijinx.pdf' compress
rm ./HintsHijinx.html
rm ./HintsHijinx.txt
rm ./temp.pdf

php ./generateDocs.php HintsHijinxBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./HintsHijinxBW.html
pdftk './temp.pdf' update_info_utf8 './HintsHijinxBW.txt' output '../HintsHijinxBW.pdf' compress
rm ./HintsHijinxBW.html
rm ./HintsHijinxBW.txt
rm ./AccHintsHijinxBW.md
rm ./temp.pdf
