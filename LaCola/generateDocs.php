<?php

require __DIR__ . '/../vendor/autoload.php';

/* Generamos el HTML */
/* -------------------------------------------------------------- */
use FastVolt\Helper\Markdown;
$mkd = Markdown::new();

$md = file_get_contents(__DIR__ . "/".$argv[1].".md");

file_put_contents(__DIR__ . "/Acc".$argv[1].".md", str_replace(["\sp", "\sc", "\sinc", "\conc", "&nbsp;\n", "\n\n\n"], "", $md));

$mkd->setContent($md);

$html = str_replace("|HTML|", $mkd->toHtml(), file_get_contents(__DIR__ . "/template".$argv[1].".html")); 
$html = str_replace("|ID|", $argv[1], $html); 
$html = str_replace("<hr />", "</div><div class=\"saltopagina\"></div>\n</section>\n<section>", $html); 
$html = str_replace("<p>\sp</p>", "</div><div class=\"saltopagina\"></div><div class='columns'>", $html);
$html = str_replace("<p>\sc</p>", "<p class=\"saltocolumna\"></p>", $html);
$html = str_replace("<div class='columns'>\n</div>", "", $html); 

file_put_contents(__DIR__ . "/".$argv[1].".html", $html);
