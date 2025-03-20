<?php
include 'connect.php'; 

// Fetch orders with customer details
$sql = "SELECT order_list.order_id, data_info_user.first_name, data_info_user.last_name, 
               order_list.total_price, order_list.order_date, order_list.pickup_date
        FROM order_list
        JOIN data_info_user ON order_list.user_id = data_info_user.id
        ORDER BY order_list.order_date DESC";

$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Receipts - WDS Data</title>
    <link rel="stylesheet" href="styles.css">
    <script>
        function openModal(orderId) {
            document.getElementById("receiptModal").style.display = "block";

            // Fetch order details 
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "fetch_receipt.php?order_id=" + orderId, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    document.getElementById("receiptDetails").innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }

        function closeModal() {
            document.getElementById("receiptModal").style.display = "none";
        }
    </script>
    <style>
        /* Modal styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.5);
        }
        .modal-content {
            background-color: white;
            margin: 10% auto;
            padding: 20px;
            width: 50%;
            border-radius: 10px;
            text-align: center;
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
    <h1>All Receipts</h1>
</header>

<nav>
    <a href="index.php">Home</a>
    <a href="customers.php">Customers</a>
    <a href="search_orders.php">Search Orders</a>
    <div class="dropdown">
        <button class="dropbtn">All Data ▼</button>
        <div class="dropdown-content">
            <a href="data.php">All Customers</a>
            <a href="receipts.php">All Receipts</a> 
        </div>
    </div>
</nav>

<style>
    .dropdown {
        position: relative;
        display: inline-block;
    }
    
    .dropbtn {
        background-color:#007bff;
        color: white;
        padding: 10px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }
    
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: white;
        min-width: 160px;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }
    
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }
    
    .dropdown-content a:hover {
        background-color: #ddd;
    }
    
    .dropdown:hover .dropdown-content {
        display: block;
    }
</style>

<h2>Receipts</h2>

<table>
    <tr>
        <th>Order ID</th>
        <th>Customer Name</th>
        <th>Total Price</th>
        <th>Order Date</th>
        <th>Pickup Date</th>
    </tr>

    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
        <tr onclick="openModal(<?= $row['order_id'] ?>)" style="cursor:pointer;">
            <td><?= $row["order_id"] ?></td>
            <td><?= $row["first_name"] . " " . $row["last_name"] ?></td>
            <td>$<?= number_format($row["total_price"], 2) ?></td>
            <td><?= $row["order_date"] ?></td>
            <td><?= $row["pickup_date"] ?></td>
        </tr>
    <?php } ?>
</table>

<!-- Receipt Modal -->
<div id="receiptModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>Receipt Details</h2>
        <div id="receiptDetails">Loading...</div>
    </div>
</div>

</body>
</html>
