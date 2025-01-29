#!/bin/bash

php ./tools/generateDocs.php
chromium --no-sandbox --headless --gpu --no-pdf-header-footer --print-to-pdf=./temp.pdf ./DoctorJekyllyMisterHydeInvestigadoresPrivados.html
pdftk 'temp.pdf' update_info_utf8 'metas.txt' output 'DoctorJekyllyMisterHydeInvestigadoresPrivados.pdf'
rm metas.txt
#rm DoctorJekyllyMisterHydeInvestigadoresPrivados.html
rm temp.pdf