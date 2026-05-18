#!/bin/bash

php ./generateDocs.php DarkSunEyE
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./DarkSunEyE.html
pdftk './temp.pdf' update_info_utf8 './DarkSunEyE.txt' output '../DarkSunEyE.pdf' compress
#rm ./DarkSunEyE.html
rm ./DarkSunEyE.txt
rm ./temp.pdf