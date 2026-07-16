#!/bin/bash

#php ./generateDocs.php BicisRadiacion
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./BicisRadiacion.html
#pdftk './temp.pdf' update_info_utf8 './BicisRadiacion.txt' output '../BicisRadiacion.pdf' compress
#rm ./BicisRadiacion.html
#rm ./temp.pdf

##php ./generateDocs.php BicisRadiacionBW
#chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./BicisRadiacionBW.html
#pdftk './temp.pdf' update_info_utf8 './BicisRadiacionBW.txt' output '../BicisRadiacionBW.pdf' compress
#rm ./BicisRadiacionBW.html
#rm ./AccBicisRadiacionBW.md
#rm ./temp.pdf

php ./generateDocs.php BikesNukes
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./BikesNukes.html
pdftk './temp.pdf' update_info_utf8 './BikesNukes.txt' output '../BikesNukes.pdf' compress
rm ./BikesNukes.html
rm ./temp.pdf

php ./generateDocs.php BikesNukesBW
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./BikesNukesBW.html
pdftk './temp.pdf' update_info_utf8 './BikesNukesBW.txt' output '../BikesNukesBW.pdf' compress
rm ./BikesNukesBW.html
rm ./AccBikesNukesBW.md
rm ./temp.pdf