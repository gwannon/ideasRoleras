#!/bin/bash

php ./TheCallOfKutchup/generateDocs.php
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./TheCallOfKutchup/temp.pdf ./TheCallOfKutchup/TheCallOfKutchup.html
pdftk './TheCallOfKutchup/temp.pdf' update_info_utf8 './TheCallOfKutchup/metas.txt' output 'TheCallOfKutchup.pdf' compress
rm ./TheCallOfKutchup/TheCallOfKutchup.html
rm ./TheCallOfKutchup/temp.pdf