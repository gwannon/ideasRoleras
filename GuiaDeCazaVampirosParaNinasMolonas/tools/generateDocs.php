<?php

require __DIR__ . '/../../vendor/autoload.php';
include(__DIR__ ."/config.php");

/* Generamos el HTML */
/* -------------------------------------------------------------- */
use FastVolt\Helper\Markdown;
$mkd = Markdown::new();
$mkd->setContent(file_get_contents(__DIR__ . "/../GuiaDeCazaVampirosParaNinasMolonas.md"));
$tags['HTML'] = $mkd->toHtml();
$html = file_get_contents(__DIR__ . "/template.html");
foreach ($tags as $tag => $value) {
  $html = str_replace("|".$tag."|", $value, $html); 
}

$html = str_replace("|HOJAPERSONAJE|", file_get_contents(__DIR__ . "/../hojapersonaje.html"), $html);

$html = str_replace("<hr />", "</div><div class=\"saltopagina\"></div>\n</section>\n<section>", $html); 
$html = str_replace("<p>\sp</p>", "</div><div class=\"saltopagina\"></div><div class=\"columns\">", $html);
$html = str_replace("<p>\sc</p>", "<p class=\"saltocolumna\"></p>", $html);
$html = str_replace("<p>\sinc</p>", "</div>", $html);
$html = str_replace("<p>\conc</p>", "<div class=\"columns\">", $html);
$html = str_replace("</h1>", "<span></span></h1>\n<div class=\"saltopagina\"></div><div class=\"columns\">", $html); 
$html = str_replace("<div class=\"columns\">\n</div>", "", $html); 
$html = str_replace("<table>", "<div><table>", $html); 
$html = str_replace("</table>", "</table></div>", $html); 

$counter = 3;
$html = preg_replace_callback("/\"saltopagina\"/", function($matches) {
  global $counter;
  if ($counter%2 == 0) $matches[0] = '"saltopagina even" id="anchor'.$counter.'"';
  else $matches[0] = '"saltopagina odd" id="anchor'.$counter.'"';
  $counter++;
  return $matches[0];
}, $html);

file_put_contents(__DIR__ . "/../GuiaDeCazaVampirosParaNinasMolonas.html", $html);

/* Generamos Metas */
/* -------------------------------------------------------------- */
$metas = "InfoKey: Subject\n";
$metas .= "InfoValue: ".$tags['DESCRIPTION']." Versión ".$tags['VERSION']."\n\n";
$metas .= "InfoKey: Author\n";
$metas .= "InfoValue: ".$tags['AUTHOR']."\n\n";
$metas .= "InfoKey: Keywords\n";
$metas .= "InfoValue: ".$tags['KEYWORDS']."\n\n";

/* Generamos indice del PDF */
/* -------------------------------------------------------------- */
$doc = new DOMDocument();
$internalErrors = libxml_use_internal_errors(true);
$doc->loadHTMLFile(__DIR__ . "/../GuiaDeCazaVampirosParaNinasMolonas.html");
$body = $doc->getElementsByTagName('body');
$body = $body->item(0);
$json = [];
$lines = [];

foreach(explode("\n", removeHtmlComments($doc->savehtml($body))) as $line) {
  $line = cleanLine($line);
  if(preg_match("/(<h1>|<h2|<h3|<h4|saltopagina)/", $line)) $lines[] = $line;
}

$metas .= bookMark("Portada", 1, 1);
$json[] = ["title" => "Portada","page" => 1];
$metas .= bookMark("Licencia de uso", 1, 4);
$json[] = ["title" => "Licencia de uso","page" => 3];
$metas .= bookMark("Índice", 1, 4);
$json[] = ["title" => "Índice","page" => 5];

$counter = 3;
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

$metas .= bookMark("Contraportada", 1, $counter);
$json[] = ["title" => "Contraportada", "page" => $counter];

echo "Indice ".count($json)." items\n";

/* Generamos el Índice HTML */
/* -------------------------------------------------------------- */
$indice = "";
foreach ($json as $item) {
  if(isset($item['tag']) && in_array($item['tag'], ['H1', 'H2'])) $indice .= '<a href="#anchor' . $item['page'] . '" class="like' . $item['tag'] . '"><span>' . $item['page'] . '</span>' . $item['title'] . '</a>';
}

$html = str_replace("|INDICE|", $indice, $html);

file_put_contents(__DIR__ . "/../GuiaDeCazaVampirosParaNinasMolonas.html", $html);
file_put_contents(__DIR__ . "/../metas.txt", $metas);

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