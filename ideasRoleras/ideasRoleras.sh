#!/bin/bash

cd ./ideasRoleras/
php ./generateDocs.php
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./ideasRoleras.html
pdftk './temp.pdf' update_info_utf8 './metas.txt' output '../ideasRoleras.pdf' compress
rm ./ideasRoleras.html
rm ./temp.pdf