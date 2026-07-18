#!/bin/bash

php ./generateDocs.php Nabucodonosorcitos
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./Nabucodonosorcitos.html
pdftk './temp.pdf' update_info_utf8 './Nabucodonosorcitos.txt' output '../Nabucodonosorcitos.pdf' compress
#rm ./Nabucodonosorcitos.html
rm ./Nabucodonosorcitos.txt
rm ./temp.pdf