<?php
$id = $_GET['id'];

$xml = new DOMDocument();
$xml->load('./xml/users.xml');

$xpath = new DOMXPATH($xml);
foreach ($xpath->query("/users/user[id='$id']") as $node) {
    echo $node->nodeValue;
    $node->parentNode->removeChild($node);
}

$xml->formatOutput = true;
$xml->save('./xml/users.xml');


