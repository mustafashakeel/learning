<?php
$xmlProc = new XsltProcessor();

$xslt = new DomDocument();
$xslt -> load("movies.xslt");

$xmlProc -> importStylesheet($xslt);

$xml = new DomDocument();
$xml -> load("movies.xml");

if ($html = $xmlProc -> transformToXML($xml)) 
{
	echo $html;
} else {
	trigger_error(E_USER_ERROR);
}
?>