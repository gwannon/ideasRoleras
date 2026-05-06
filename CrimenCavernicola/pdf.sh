#!/bin/bash

#php ./generateDocs.php CrimenCavernicola
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./CrimenCavernicola.html
#pdftk './temp.pdf' update_info_utf8 './CrimenCavernicola.txt' output '../CrimenCavernicola.pdf' compress
#rm ./CrimenCavernicola.html
#rm ./CrimenCavernicola.txt
#rm ./temp.pdf

#php ./generateDocs.php CrimenCavernicolaBW
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./CrimenCavernicolaBW.html
#pdftk './temp.pdf' update_info_utf8 './CrimenCavernicolaBW.txt' output '../CrimenCavernicolaBW.pdf' compress
#rm ./CrimenCavernicolaBW.html
#rm ./CrimenCavernicolaBW.txt
#rm ./AccCrimenCavernicolaBW.md
#rm ./temp.pdf

php ./generateDocs.php CavemanCrime
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./CavemanCrime.html
pdftk './temp.pdf' update_info_utf8 './CavemanCrime.txt' output '../CavemanCrime.pdf' compress
rm ./CavemanCrime.html
rm ./CavemanCrime.txt
rm ./temp.pdf

php ./generateDocs.php CavemanCrimeBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./CavemanCrimeBW.html
pdftk './temp.pdf' update_info_utf8 './CavemanCrimeBW.txt' output '../CavemanCrimeBW.pdf' compress
rm ./CavemanCrimeBW.html
rm ./CavemanCrimeBW.txt
rm ./AccCavemanCrimeBW.md
rm ./temp.pdf