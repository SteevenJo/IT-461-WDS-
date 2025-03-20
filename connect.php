<?php
$servername = "localhost"; 
$username = "root"; // Default for XAMPP
$password = ""; // Default password is empty for XAMPP
$database = "wds_data"; 

$conn = new mysqli($servername, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
