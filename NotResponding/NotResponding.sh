#!/bin/bash

php ./generateDocs.php NotRespondingES
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./NotRespondingES.html
pdftk './temp.pdf' update_info_utf8 './NotRespondingES.txt' output '../NotRespondingES.pdf' compress
rm ./NotRespondingES.html
rm ./temp.pdf

php ./generateDocs.php DesbordamientoPilaES
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./DesbordamientoPilaES.pdf ./DesbordamientoPilaES.html
rm ./DesbordamientoPilaES.html