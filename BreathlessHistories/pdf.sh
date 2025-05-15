#!/bin/bash

php ./generateDocs.php ElRio
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./ElRio.html
pdftk './temp.pdf' update_info_utf8 './ElRio.txt' output './ElRio.pdf' compress
rm ./ElRio.html
rm ./temp.pdf
