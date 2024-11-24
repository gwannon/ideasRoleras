#!/bin/bash

php ./RPGTheMusical/generateDocs.php
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./RPGTheMusical/temp.pdf ./RPGTheMusical/RPGTheMusical.html
pdftk './RPGTheMusical/temp.pdf' update_info_utf8 './RPGTheMusical/metas.txt' output 'RPGTheMusical.pdf'
rm ./RPGTheMusical/metas.txt
#rm ./RPGTheMusical/RPGTheMusical.html
rm ./RPGTheMusical/temp.pdf