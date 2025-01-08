#!/bin/bash

php ./tools/generateDocs.php
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./GuiaDeCazaVampirosParaNinasMolonas.html
pdftk 'temp.pdf' update_info_utf8 'metas.txt' output 'GuiaDeCazaVampirosParaNinasMolonas.pdf'
rm metas.txt
#rm GuiaDeCazaVampirosParaNinasMolonas.html
rm temp.pdf