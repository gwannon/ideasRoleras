#!/bin/bash

php ./generateDocs.php BinaryDungeon
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./BinaryDungeon.html
pdftk './temp.pdf' update_info_utf8 './BinaryDungeon.txt' output '../BinaryDungeon.pdf' compress
rm ./BinaryDungeon.html
rm ./BinaryDungeon.txt
rm ./temp.pdf
rm ../BinaryDungeon.pdf

