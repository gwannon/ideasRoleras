#!/bin/bash

php ./generateDocs.php NinjasCutres
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./NinjasCutres.html
pdftk './temp.pdf' update_info_utf8 './NinjasCutres.txt' output '../NinjasCutres.pdf' compress
#rm ./NinjasCutres.html
rm ./temp.pdf

php ./generateDocs.php NinjasCutresAventuras
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./NinjasCutresAventuras.html
pdftk './temp.pdf' update_info_utf8 './NinjasCutresAventuras.txt' output '../NinjasCutresAventuras.pdf' compress
#rm ./NinjasCutresAventuras.html
rm ./temp.pdf

php ./generateDocs.php NinjasCutresSamuraisPaletos
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./NinjasCutresSamuraisPaletos.html
pdftk './temp.pdf' update_info_utf8 './NinjasCutresSamuraisPaletos.txt' output '../NinjasCutresSamuraisPaletos.pdf' compress
#rm ./NinjasCutresSamuraisPaletos.html
rm ./temp.pdf


