#!/bin/bash

php ./generateDocs.php
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./NinjasCutres.html
pdftk './temp.pdf' update_info_utf8 './metas.txt' output '../NinjasCutres.pdf' compress
rm ./NinjasCutres.html
rm ./temp.pdf