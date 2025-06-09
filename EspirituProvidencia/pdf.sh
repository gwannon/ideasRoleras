#!/bin/bash

php ./tools/generateDocs.php
google-chrome --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./EspirituProvidencia.html
pdftk 'temp.pdf' update_info_utf8 'metas.txt' output 'EspirituProvidencia.pdf'
rm metas.txt
rm temp.pdf
