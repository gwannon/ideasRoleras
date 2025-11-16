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



file_put_contents(__DIR__ . "/Accesibilidad".$argv[1].".md", str_replace(["|INDICE|", "|pixeles.html|", "|hojapersonaje.html|", "|pixels.html|", "|charactersheet.html|","\sp", "\sc", "\sinc", "\conc", "&nbsp;\n", "\n\n\n"], "", $md));

$mkd->setContent($md);

$html = str_replace("|HTML|", $mkd->toHtml(), file_get_contents(__DIR__ . "/template".$argv[1].".html")); 
$html = str_replace("|ID|", $argv[1], $html); 
//$html = str_replace("<hr />", "</div><div class=\"saltopagina\"></div>\n</section>\n<section>", $html); 
$html = str_replace("<p>\sp</p>", "</div><div class=\"saltopagina\"></div><div class='columns'>", $html);
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

$counter = 2;
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
if($argv[1] == 'Point-n-click') {
  $metas = "InfoKey: Title\n";
  $metas .= "InfoValue: Point and click RPG\n\n";
  $metas .= "InfoKey: Subject\n";
  $metas .= "InfoValue: «Point and click RPG» es un pequeño juego de rol que busca simular la experiencia de las antiguas aventuras clásicas Point and click de los años 80 y 90 como «The secret of Monkey Island» o «Kingquest». Versión 0.5\n\n";
  $metas .= "InfoKey: Author\n";
  $metas .= "InfoValue: Gwannon\n\n";
  $metas .= "InfoKey: Keywords\n";
  $metas .= "InfoValue: rpg, ttrpg, parodia, point and click, aventura gráfica\n\n";
} else if($argv[1] == 'Point-n-clickEN') {
  $metas = "InfoKey: Title\n";
  $metas .= "InfoValue: Point and click RPG\n\n";
  $metas .= "InfoKey: Subject\n";
  $metas .= "InfoValue: «Point and click RPG» es un pequeño juego de rol que busca simular la experiencia de las antiguas aventuras clásicas Point and click de los años 80 y 90 como «The secret of Monkey Island» o «Kingquest». Versión 0.5\n\n";
  $metas .= "InfoKey: Author\n";
  $metas .= "InfoValue: Gwannon\n\n";
  $metas .= "InfoKey: Keywords\n";
  $metas .= "InfoValue: rpg, ttrpg, parody, point and click, adventure game, retropixel\n\n";
} else if($argv[1] == 'MisterioDeLaPeninsulaDelSimio') {
  $metas = "InfoKey: Title\n";
  $metas .= "InfoValue: El enigma de la Península del Simio\n\n";
  $metas .= "InfoKey: Subject\n";
  $metas .= "InfoValue: «El enigma de la Península del Simio» es una aventura para «Point and click RPG» que plagia vilmente la famosa aventura piratil de LUcasArts.\n\n";
  $metas .= "InfoKey: Author\n";
  $metas .= "InfoValue: Gwannon\n\n";
  $metas .= "InfoKey: Keywords\n";
  $metas .= "InfoValue: rpg, ttrpg, parody, point and click, adventure game, retropixel\n\n";
}

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
    //$json[] = ["title" => $line,"page" => $counter, "tag" => "H1"];
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
  if(isset($item['tag']) && in_array($item['tag'], ['H2'])) $indice .= '<a href="#anchor' . ($item['page']) . '" class="like' . $item['tag'] . '"><span>' . $item['page'] . '</span>' . $item['title'] . '</a>';
}
if($argv[1] == 'Point-n-click') {
  $html = str_replace("|INDICE|", "<h3>Índice</h3>".$indice, $html);
} else if($argv[1] == 'Point-n-clickEN') {
  $html = str_replace("|INDICE|", "<h3>Index</h3>".$indice, $html);
} else if($argv[1] == 'MisterioDeLaPeninsulaDelSimio') {
  $html = str_replace("|INDICE|", "<h3>Índice</h3>".$indice, $html);
}



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