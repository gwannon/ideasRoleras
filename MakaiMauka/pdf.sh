#!/bin/bash

php ./generateDocs.php MakaiMauka
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./MakaiMauka.html
pdftk './temp.pdf' update_info_utf8 './MakaiMauka.txt' output '../MakaiMauka.pdf' compress
#rm ./MakaiMauka.html
rm ./MakaiMauka.txt
rm ./temp.pdf