#!/bin/bash

php ./generateDocs.php DarkSunEyE
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./DarkSunEyE.html
pdftk './temp.pdf' update_info_utf8 './DarkSunEyE.txt' output '../DarkSunEyE.pdf' compress
rm ./DarkSunEyE.html
rm ./DarkSunEyE.txt
rm ./temp.pdf

php ./generateDocs.php DarkSunEyEBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./DarkSunEyEBW.html
pdftk './temp.pdf' update_info_utf8 './DarkSunEyEBW.txt' output '../DarkSunEyEBW.pdf' compress
rm ./DarkSunEyEBW.html
rm ./DarkSunEyEBW.txt
rm ./temp.pdf