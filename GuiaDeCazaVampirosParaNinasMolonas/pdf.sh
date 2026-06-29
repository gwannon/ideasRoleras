#!/bin/bash

php ./tools/generateDocs.php GuiaDeCazaVampirosParaNinasMolonas
google-chrome --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./GuiaDeCazaVampirosParaNinasMolonas.html
pdftk 'temp.pdf' update_info_utf8 'metas.txt' output 'GuiaDeCazaVampirosParaNinasMolonas.pdf'
rm metas.txt
rm temp.pdf

php ./tools/generateDocs.php GuiaDeCazaVampirosParaNinasMolonasBW
google-chrome --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./GuiaDeCazaVampirosParaNinasMolonasBW.html
pdftk 'temp.pdf' update_info_utf8 'metas.txt' output 'GuiaDeCazaVampirosParaNinasMolonasBW.pdf'
rm metas.txt
rm temp.pdf
rm GuiaDeCazaVampirosParaNinasMolonasBW.html
rm AccesbilidadGuiaDeCazaVampirosParaNinasMolonasBW.md