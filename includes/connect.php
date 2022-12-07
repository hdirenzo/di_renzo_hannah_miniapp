<?php
header('Content-Type: application/json');

$user = 'root';
$password = 'root';
$db = 'db_mini';
$host - 'localhost'
$port = '8889';

$connection = mysqli_connect($host, $user, $password, $db, $port);

if (!$connection) {
    die("Not connected to mySQL");
}

$query_result = mysqli_query($connection, 'SELECT * FROM tbl_cars');
//////////////////I don't understand the 'row/s'//////////////////////////////////////////
$rows = []

while ($row = mysqli_fetch_array($query_result)) {
    $rows[] = $row;
} 
////////////////dunno if im supposed to be using json////////////

$json = json_encode($rows);
var_dump($json);
echo $json;