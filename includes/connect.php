<?php

header('Content-Type: application/json');

$user = 'root';
$password = 'root';
$db = 'db_mini';
$host = 'localhost';
$port = 8889;

$connection = mysqli_connect($host, $user, $password, $db, $port);

if (!$connection) {
    die("Not connected to mySQL");
}

$query_result = mysqli_query($connection, "
SELECT cars_engine AS \"engine\", cars_price AS \"price\", tbl_models.models_name AS \"model\", tbl_modeltypes.modeltypes_name AS \"modelType\", cars_img AS \"imageUrl\" 
FROM tbl_cars 
JOIN tbl_models ON tbl_models.models_id = tbl_cars.cars_model_id 
JOIN tbl_modeltypes ON tbl_modeltypes.modeltypes_id = tbl_cars.cars_model_type_id;
");

$rows = [];

while ($row = mysqli_fetch_array($query_result, MYSQLI_ASSOC)) {
    $rows[] = $row;
} 
////////////////dunno if im supposed to be using json////////////

$json = json_encode($rows);
echo $json;