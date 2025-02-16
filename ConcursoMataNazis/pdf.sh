#!/bin/bash

php ./tools/generateDocs.php
google-chrome --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./ConcursoMataNazis.html
pdftk 'temp.pdf' update_info_utf8 'metas.txt' output 'ConcursoMataNazis.pdf'
rm metas.txt
rm temp.pdf
