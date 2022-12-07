<?php
require("connect.php");
require("function.php");

$id = isset($_GET["id"]) /////////////////////something here
$result = getData($id);

echo json_encode($result);