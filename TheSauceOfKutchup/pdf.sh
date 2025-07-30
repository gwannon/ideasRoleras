#!/bin/bash

php ./generateDocs.php TheSauceOfKutchup
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TheSauceOfKutchup.html
pdftk './temp.pdf' update_info_utf8 './metas.txt' output '../TheSauceOfKutchup.pdf' compress
#rm ./TheSauceOfKutchup.html
rm ./temp.pdf

php ./generateDocs.php TheSauceOfKutchupGuiaDelChef
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./TheSauceOfKutchupGuiaDelChef.html
pdftk './temp.pdf' update_info_utf8 './metasguia.txt' output '../TheSauceOfKutchupGuiaDelChef.pdf' compress
#rm ./TheSauceOfKutchupGuiaDelChef.html
rm ./temp.pdf
