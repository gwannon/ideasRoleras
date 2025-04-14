#!/bin/bash

php ./generateDocs.php LaPlaya
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./LaPlaya.html
pdftk './temp.pdf' update_info_utf8 './LaPlaya.txt' output '../LaPlaya.pdf' compress
rm ./LaPlaya.html
rm ./LaPlaya.txt
rm ./temp.pdf
