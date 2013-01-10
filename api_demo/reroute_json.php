<?php

header('Access-Control-Allow-Origin: *'); /*<- this allows cross domain requests */
header('Content-type: application/json');

echo file_get_contents('*insert url here*'); /*<- insert url from api here*/

?>
