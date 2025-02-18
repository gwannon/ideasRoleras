#!/bin/bash

php ./tools/generateDocs.php
google-chrome --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./GuiaDeCazaVampirosParaNinasMolonas.html
pdftk 'temp.pdf' update_info_utf8 'metas.txt' output 'GuiaDeCazaVampirosParaNinasMolonas.pdf'
rm metas.txt
#rm GuiaDeCazaVampirosParaNinasMolonas.html
#mv GuiaDeCazaVampirosParaNinasMolonas.html index.html
rm temp.pdf