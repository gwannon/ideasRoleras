#!/bin/bash

php ./tools/generateDocs.php
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./DoctorJekyllyMisterHydeMasExtranosCasos.html
pdftk 'temp.pdf' update_info_utf8 'metas.txt' output 'DoctorJekyllyMisterHydeMasExtranosCasos.pdf'
rm metas.txt
#rm DoctorJekyllyMisterHydeMasExtranosCasos.html
rm temp.pdf