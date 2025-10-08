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


file_put_contents(__DIR__ . "/Acc".$argv[1].".md", str_replace(["\sp", "\sc", "\sinc", "\conc", "&nbsp;\n", "\n\n\n"], "", "# Makai y mauka\n\n".$md));

$mkd->setContent($md);

$html = str_replace("|HTML|", $mkd->toHtml(), file_get_contents(__DIR__ . "/template.html")); 
$html = str_replace("|ID|", $argv[1], $html); 
$html = str_replace("<hr />", "</div>\n<div class=\"saltopagina\"></div>\n</section>\n<section>", $html); 
$html = str_replace("</h1>", "</h1>\n<div class=\"saltopagina\"></div>\n<div class='columns'>", $html); 
$html = str_replace("<p>\sp</p>", "</div>\n<div class=\"saltopagina\"></div>\n<div class='columns'>", $html);
$html = str_replace("<p>\sc</p>", "<p class=\"saltocolumna\"></p>", $html);
$html = str_replace("<p>\sinc</p>", "</div>", $html);
$html = str_replace("<p>\conc</p>", "<div class=\"columns\">", $html);
$html = str_replace("<div class='columns'>\n</div>", "", $html); 

/*$html = str_replace("<p>|HojaPersonaje.html|</p>", file_get_contents(__DIR__ . "/HojaPersonaje.html"), $html);
$html = str_replace("<p>|HojaServidor.html|</p>", file_get_contents(__DIR__ . "/HojaServidor.html"), $html);*/

$html = preg_replace_callback("/<p>\|([a-zA-Z]*)\.html\|<\/p>/", function($matches) {
  $matches[0] = file_get_contents(__DIR__ . "/".$matches[1].".html"); 
  return $matches[0];
}, $html);

$counter = 1;
$html = preg_replace_callback("/\"saltopagina\"/", function($matches) {
  global $counter;
  if ($counter%2 == 0) $matches[0] = '"saltopagina even" id="anchor'.$counter.'"';
  else $matches[0] = '"saltopagina odd" id="anchor'.$counter.'"';
  $counter++;
  return $matches[0];
}, $html);

file_put_contents(__DIR__ . "/".$argv[1].".html", $html);

/* Generamos Metas */
/* -------------------------------------------------------------- */
$metas = "InfoKey: Title\n";
$metas .= "InfoValue: Makai Mauka 0.3\n\n";
$metas .= "InfoKey: Subject\n";
$metas .= "InfoValue: «Makai Mauka» es una ambientación para el juego de rol Ryuutama basado en los mitos y leyendas de las islas de la polinesia.\n\n";
$metas .= "InfoKey: Author\n";
$metas .= "InfoValue: Gwannon\n\n";
$metas .= "InfoKey: Keywords\n";
$metas .= "InfoValue: rpg, ttrpg, polinesia, ryuutama, MakaiMauka\n\n";

/* Generamos indice del PDF */
/* -------------------------------------------------------------- */
$doc = new DOMDocument();
$internalErrors = libxml_use_internal_errors(true);
$doc->loadHTMLFile(__DIR__ . "/".$argv[1].".html");
$body = $doc->getElementsByTagName('body');
$body = $body->item(0);
$json = [];
$lines = [];

foreach(explode("\n", removeHtmlComments($doc->savehtml($body))) as $line) {
  $line = cleanLine($line);
  if(preg_match("/(<h1>|<h2|<h3|<h4|saltopagina)/", $line)) $lines[] = $line;
}

$counter = 1;
foreach($lines as $line) {
  if(preg_match("/(<h1>)/", $line)) {
    $line = strip_tags($line);
    $metas .= bookMark($line, 1, $counter);
    $json[] = ["title" => $line,"page" => $counter, "tag" => "H1"];
  } else if(preg_match("/(<h2>)/", $line)) {
    $line = strip_tags($line);
    $metas .= bookMark($line, 2, $counter);
    $json[] = ["title" => $line,"page" => $counter, "tag" => "H2"];
  } else if(preg_match("/(<h3>)/", $line)) {
    $line = strip_tags($line);
    $metas .= bookMark($line, 3, $counter);
    $json[] = ["title" => $line,"page" => $counter, "tag" => "H3"];
  } else if(preg_match("/(<h4>)/", $line)) {
    $line = strip_tags($line);
    $metas .= bookMark($line, 4, $counter);
    $json[] = ["title" => $line,"page" => $counter, "tag" => "H4"];
  } else if(preg_match("/saltopagina/", $line)) {
    $counter++;
  }
}

echo "Indice ".count($json)." items\n";

/* Generamos el Índice HTML */
/* -------------------------------------------------------------- */
$indice = "";
foreach ($json as $item) {
  if(isset($item['tag']) && in_array($item['tag'], ['H1', 'H2'])) $indice .= '<a href="#anchor' . ($item['page']-1) . '" class="like' . $item['tag'] . '"><span>' . $item['page'] . '</span>' . $item['title'] . '</a>';
}

$html = str_replace("|INDICE|", $indice, $html);

file_put_contents(__DIR__ . "/".$argv[1].".html", $html);

file_put_contents(__DIR__ . "/".$argv[1].".txt", $metas);

/* LIBs */
/* -------------------------------------------------------------- */
function cleanLine($line) {
  return str_replace(array("  ", "   ", "\t", "\n", "\r"), "", $line);
}

function bookMark($title, $level, $counter) {
  $title = htmlspecialchars_decode($title);
  $metas = "BookmarkBegin\n";
  $metas .= "BookmarkTitle: {$title}\n";
  $metas .= "BookmarkLevel: {$level}\n";
  $metas .= "BookmarkPageNumber: {$counter}\n";
  return $metas;
}

function removeHtmlComments($content = '') {
  return preg_replace('/<!--(.|\s)*?-->/', '', $content);
}