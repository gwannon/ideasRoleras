#!/bin/bash

php ./generateDocs.php LaGranCampañaDeMundoDisco
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./LaGranCampañaDeMundoDisco.html
pdftk './temp.pdf' update_info_utf8 './LaGranCampañaDeMundoDisco.txt' output '../LaGranCampañaDeMundoDisco.pdf' compress
#rm ./LaGranCampañaDeMundoDisco.html
#rm ../LaGranCampañaDeMundoDisco.pdf
mv ../LaGranCampañaDeMundoDisco.pdf ../LaGranCampañaDeMundodisco.pdf
mv ./AccLaGranCampañaDeMundoDisco.md ./AccLaGranCampañaDeMundodisco.md
rm ./LaGranCampañaDeMundoDisco.txt
rm ./temp.pdf
