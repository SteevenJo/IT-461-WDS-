<?php
include 'connect.php'; 

$search = "";
if (isset($_POST['submit'])) {
    $search = mysqli_real_escape_string($conn, $_POST['search']);
    $sql = "SELECT * FROM data_info_user WHERE last_name LIKE '%$search%'";
} else {
    $sql = "SELECT * FROM data_info_user";
}

$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Customers</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<header>
    <h1>Search Customers</h1>
</header>

<nav>
    <a href="index.php">Home</a>
    <a href="customers.php">Customers</a>
    <a href="search_orders.php">Search Orders</a>
    <a href="data.php">All Data</a>
</nav>


<form method="POST" action="">
    <input type="text" name="search" placeholder="Search by Last Name">
    <input type="submit" name="submit" value="Search">
</form>

<table>
    <tr>
        <th>Last Name</th>
        <th>Address</th>
        <th>City</th>
        <th>State</th>
        <th>Zip</th>
        <th>Phone</th>
        <th>Email</th>
    </tr>

    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
        <tr>
            <td><?= $row["last_name"] ?></td>
            <td><?= $row["address"] ?></td>
            <td><?= $row["city"] ?></td>
            <td><?= $row["state"] ?></td>
            <td><?= $row["zip"] ?></td>
            <td><?= $row["phone1"] ?></td>
            <td><?= $row["email"] ?></td>
        </tr>
    <?php } ?>
</table>

</body>
</html>
