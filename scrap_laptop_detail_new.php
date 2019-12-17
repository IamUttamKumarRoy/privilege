<?php
ini_set("user_agent","Mozilla/5.0 (Windows NT 6.1; rv:8.0) Gecko/20100101 Firefox/8.0");

// example of how to use basic selector to retrieve HTML contents
include('php_dom/simple_html_dom.php');

// get DOM from URL or file
//$html = file_get_html('https://www.startech.com.bd/hp-probook-440-g6-core-i5-8th-gen-laptop');
$html = file_get_html('https://www.startech.com.bd/hp-probook-450-g5core-i7-laptop');

echo $html->find('h1[class=product-name]', 0)->plaintext;

$prod_inc = 1;

foreach($html->find('table[class=product-info-table] tr') as $tr) 
{ 
    $info_inc = 1;
    foreach($tr->find('td') as $t) { 
        $product_info[$prod_inc][$info_inc] = $t->outertext;
        $info_inc++;
    }
    $prod_inc++;
}

$row_count = 1;

foreach($html->find('table[class=data-table] tr') as $tr) 
{ 
    $inc = 1;
    foreach($tr->find('td') as $t) 
    { 
        $data[$row_count][$inc] = $t->outertext;
        $inc++;
    }
    $row_count++;
} 
 print '<pre>';
 print_r($product_info);
 print_r($data);
 print '</pre>';