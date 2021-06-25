<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");

$servername = "localhost";
$username = "root";
$password = null;
$dbname = "jackydev";

$users = [];

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM art ORDER BY id DESC";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while ($row = mysqli_fetch_assoc($result)) {
        $img = $row["image"];
        $img = "http://localhost/jacky/backEnd/" . $img;
        array_push($users, array(
            "id" => $row["id"],
            "name" => $row["name"],
            "image" => $img,
            "title" => $row["title"],
        ));
    }
}

mysqli_close($conn);

echo json_encode($users);
