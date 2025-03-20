<?php
include 'connect.php';

// Handle search functionality
$search = "";
$sql = "SELECT * FROM data_info_user";
if (isset($_POST['submit'])) {
    $search = mysqli_real_escape_string($conn, $_POST['search']);
    $sql = "SELECT * FROM data_info_user WHERE last_name LIKE '%$search%' OR first_name LIKE '%$search%'";
}
$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customers - WDS Data</title>
    <link rel="stylesheet" href="styles.css">
    <script>
        function openModal() {
            document.getElementById("customerModal").style.display = "block";
        }
        function closeModal() {
            document.getElementById("customerModal").style.display = "none";
        }
    </script>
    <style>
        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
        }
        .modal-content {
            background-color: white;
            margin: 10% auto;
            padding: 20px;
            width: 50%;
            border-radius: 10px;
        }
        .close {
            color: red;
            float: right;
            font-size: 28px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<header>
    <h1>Customers</h1>
</header>

<nav>
    <a href="index.php">Home</a>
    <a href="customers.php">Customers</a>
    <a href="search_orders.php">Search Orders</a>
    <a href="data.php">All Data</a>
</nav>

<!-- Search Form -->
<form method="POST">
    <input type="text" name="search" placeholder="Search by First or Last Name" value="<?= $search ?>">
    <input type="submit" name="submit" value="Search">
</form>

<!-- Add Customer Button -->
<button onclick="openModal()">Add Customer</button>

<!-- Modal (Pop-up Form) -->
<div id="customerModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>Add New Customer</h2>
        <form method="POST" action="process_customer.php">
            <input type="text" name="first_name" placeholder="First Name" required>
            <input type="text" name="last_name" placeholder="Last Name" required>
            <input type="text" name="address" placeholder="Address" required>
            <input type="text" name="city" placeholder="City" required>
            <input type="text" name="state" placeholder="State" required>
            <input type="text" name="zip" placeholder="Zip Code" required>
            <input type="text" name="phone" placeholder="Phone Number" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="submit" value="Add Customer">
        </form>
    </div>
</div>

<!-- Customer List Table -->
<table>
    <tr>
        <th>First Name</th>
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
        <td><?= $row["first_name"] ?></td>
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
