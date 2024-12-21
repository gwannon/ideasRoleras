<?php

require __DIR__ . '/../vendor/autoload.php';

/* Generamos el HTML */
/* -------------------------------------------------------------- */
use FastVolt\Helper\Markdown;
$mkd = Markdown::new();
$mkd->setContent(file_get_contents(__DIR__ . "/../".$argv[1].".md"));

$html = str_replace("|HTML|", $mkd->toHtml(), file_get_contents(__DIR__ . "/template.html")); 
$html = str_replace("<hr />", "</div><div class=\"saltopagina\"></div>\n</section>\n<section>", $html); 
$html = str_replace("<p>\saltopagina</p>", "</div><div class=\"saltopagina\"></div><div class='columns'>", $html);
$html = str_replace("<p>\saltocolumna</p>", "<p class=\"saltocolumna\"></p>", $html);
$html = str_replace("<div class='columns'>\n</div>", "", $html); 
$html = str_replace("|ID|", $argv[1], $html); 

file_put_contents(__DIR__ . "/".$argv[1].".html", $html);