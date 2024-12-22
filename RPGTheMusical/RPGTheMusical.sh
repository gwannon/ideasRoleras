#!/bin/bash

cd ./RPGTheMusical/
php ./generateDocs.php
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./RPGTheMusical.html
pdftk './temp.pdf' update_info_utf8 './metas.txt' output '../RPGTheMusical.pdf' compress
rm ./RPGTheMusical.html
rm ./temp.pdf