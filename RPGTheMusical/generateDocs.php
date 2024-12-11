<?php

require __DIR__ . '/../vendor/autoload.php';

/* Generamos el HTML */
/* -------------------------------------------------------------- */
use FastVolt\Helper\Markdown;
$mkd = Markdown::new();
$mkd->setContent(file_get_contents(__DIR__ . "/../RPGTheMusical.md"));
$tags['HTML'] = $mkd->toHtml();
$html = file_get_contents(__DIR__ . "/template.html");
foreach ($tags as $tag => $value) {
  $html = str_replace("|".$tag."|", $value, $html); 
}
$html = str_replace("<hr />", "</div><div class=\"saltopagina\"></div>\n</section>\n<section>", $html); 
$html = str_replace("<p>\saltopagina</p>", "</div><div class=\"saltopagina\"></div><div class='columns'>", $html);
$html = str_replace("<p>\saltocolumna</p>", "<p class=\"saltocolumna\"></p>", $html);
//$html = str_replace("<p>\sincolumna</p>", "</div>", $html);
//$html = str_replace("<p>\concolumna</p>", "<div class='columns'>", $html);
$html = str_replace("<div class='columns'>\n</div>", "", $html); 
//$html = str_replace("<table>", "<div><table>", $html); 
//$html = str_replace("</table>", "</table></div>", $html); 

/* Generamos Metas */
/* -------------------------------------------------------------- */
$metas = "InfoKey: Title\n";
$metas .= "InfoValue: RPG The musical\n\n";
$metas .= "InfoKey: Subject\n";
$metas .= "InfoValue: RPG The musical (RpgTM) es una ayuda rolera en una sola hoja para jugar escenas musicales en tus partidas. Versión 1.0\n\n";
$metas .= "InfoKey: Author\n";
$metas .= "InfoValue: Gwannon\n\n";
$metas .= "InfoKey: Keywords\n";
$metas .= "InfoValue: rpg, musical, one-page\n\n";

file_put_contents(__DIR__ . "/metas.txt", $metas);
file_put_contents(__DIR__ . "/RPGTheMusical.html", $html);