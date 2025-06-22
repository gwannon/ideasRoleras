<?php

require __DIR__ . '/../vendor/autoload.php';

/* Generamos el HTML */
/* -------------------------------------------------------------- */
use FastVolt\Helper\Markdown;
$mkd = Markdown::new();

$md = file_get_contents(__DIR__ . "/".$argv[1].".md");

$md = preg_replace_callback("/\|([0-9a-zA-Z]*)\.md\|/", function($matches) {
  $matches[0] = file_get_contents(__DIR__ . "/".$matches[1].".md"); 
  return $matches[0];
}, $md);

$mkd->setContent($md);


$html = str_replace("|HTML|", $mkd->toHtml(), file_get_contents(__DIR__ . "/template.html")); 
$html = str_replace("|ID|", $argv[1], $html); 
$html = str_replace("<hr />", "</div><div class=\"saltopagina\"></div>\n</section>\n<section>", $html); 
$html = str_replace("<p>\sp</p>", "</div><div class=\"saltopagina\"></div><div class='columns'>", $html);
$html = str_replace("<p>\sc</p>", "<p class=\"saltocolumna\"></p>", $html);
$html = str_replace("<div class='columns'>\n</div>", "", $html); 

file_put_contents(__DIR__ . "/".$argv[1].".html", $html);