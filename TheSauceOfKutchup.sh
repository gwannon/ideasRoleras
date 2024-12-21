#!/bin/bash

php ./TheSauceOfKutchup/generateDocs.php TheSauceOfKutchup
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./TheSauceOfKutchup/temp.pdf ./TheSauceOfKutchup/TheSauceOfKutchup.html
pdftk './TheSauceOfKutchup/temp.pdf' update_info_utf8 './TheSauceOfKutchup/metas.txt' output 'TheSauceOfKutchup.pdf' compress
rm ./TheSauceOfKutchup/TheSauceOfKutchup.html
rm ./TheSauceOfKutchup/temp.pdf

php ./TheSauceOfKutchup/generateDocs.php TheSauceOfKutchupGuiaDelChef
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./TheSauceOfKutchup/temp.pdf ./TheSauceOfKutchup/TheSauceOfKutchupGuiaDelChef.html
pdftk './TheSauceOfKutchup/temp.pdf' update_info_utf8 './TheSauceOfKutchup/metas2.txt' output 'TheSauceOfKutchupGuiaDelChef.pdf' compress
#rm ./TheSauceOfKutchup/TheSauceOfKutchupGuiaDelChef.html
rm ./TheSauceOfKutchup/temp.pdf