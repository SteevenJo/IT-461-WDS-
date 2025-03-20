<?php
include 'connect.php'; 

// Fetch item list from price_list_product table
$item_query = "SELECT id, items, price FROM price_list_product";
$item_result = mysqli_query($conn, $item_query);

$search = "";
if (isset($_POST['submit'])) {
    $search = mysqli_real_escape_string($conn, $_POST['search']);
    $sql = "SELECT order_list.order_id, data_info_user.first_name, data_info_user.last_name, 
                   order_list.total_price, order_list.order_date 
            FROM order_list
            JOIN data_info_user ON order_list.user_id = data_info_user.id
            WHERE data_info_user.last_name LIKE '%$search%' OR data_info_user.first_name LIKE '%$search%'";
} else {
    $sql = "SELECT order_list.order_id, data_info_user.first_name, data_info_user.last_name, 
                   order_list.total_price, order_list.order_date 
            FROM order_list
            JOIN data_info_user ON order_list.user_id = data_info_user.id";
}

$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Orders</title>
    <link rel="stylesheet" href="styles.css">
    <script>
        function openModal() {
            document.getElementById("orderModal").style.display = "block";
        }
        function closeModal() {
            document.getElementById("orderModal").style.display = "none";
        }

        function openNewItemModal() {
            document.getElementById("newItemModal").style.display = "block";
        }
        function closeNewItemModal() {
            document.getElementById("newItemModal").style.display = "none";
        }

        function updatePrice() {
    var itemSelect = document.getElementById("description");
    var unitPrice = document.getElementById("unit_price");
    var quantity = document.getElementById("quantity");
    var totalPrice = document.getElementById("total_price");

    if (!itemSelect || !unitPrice || !quantity || !totalPrice) {
        console.error("One or more elements are missing.");
        alert("Error: Some fields are missing. Please check the order form.");
        return; 
    }

    var selectedItem = itemSelect.options[itemSelect.selectedIndex];

    if (!selectedItem) {
        console.error("No item selected.");
        return;
    }

    if (selectedItem.value === "other") {
        openNewItemModal(); 
        return;
    }

    var price = selectedItem.getAttribute("data-price");

    if (!price) {
        console.error("Price attribute is missing for the selected item.");
        unitPrice.value = "0.00";
        totalPrice.value = "0.00";
        return;
    }

    unitPrice.value = parseFloat(price).toFixed(2);
    totalPrice.value = (parseFloat(price) * parseInt(quantity.value)).toFixed(2);
}


        function saveNewItem() {
            var newItem = document.getElementById("new_item").value;
            var newPrice = document.getElementById("new_price").value;

            if (newItem.trim() === "" || newPrice.trim() === "" || isNaN(newPrice) || newPrice <= 0) {
                alert("Please enter a valid item name and price.");
                return;
            }

            var xhr = new XMLHttpRequest();
            xhr.open("POST", "add_list.php", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    if (xhr.responseText === "success") {
                        alert("Item added successfully!");

                        // Close modal
                        closeNewItemModal();

                        // Add new item to the dropdown list
                        var select = document.getElementById("description");
                        var option = document.createElement("option");
                        option.text = newItem + " - $" + newPrice;
                        option.value = newItem;
                        option.setAttribute("data-price", newPrice);
                        select.appendChild(option);

                        // Select the newly added item
                        select.value = newItem;
                        updatePrice();
                    } else if (xhr.responseText === "exists") {
                        alert("This item already exists!");
                    } else {
                        alert("Error adding item.");
                    }
                }
            };
            xhr.send("items=" + encodeURIComponent(newItem) + "&price=" + encodeURIComponent(newPrice));
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
            margin: 5% auto;
            padding: 20px;
            width: 50%;
            max-height: 80vh;
            overflow-y: auto;
            border-radius: 10px;
            position: relative;
        }
        .close {
            position: absolute;
            top: 10px;
            right: 20px;
            font-size: 20px;
            cursor: pointer;
        }
        label, input, select {
            display: block;
            margin-bottom: 10px;
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <h1>Search Orders</h1>
</header>

<nav>
    <a href="index.php">Home</a>
    <a href="customers.php">Customers</a>
    <a href="search_orders.php">Search Orders</a>
    <a href="data.php">All Data</a>
</nav>

<!-- Search Form -->
<form method="POST" action="">
    <input type="text" name="search" placeholder="Search by First or Last Name">
    <input type="submit" name="submit" value="Search">
</form>

<!-- Make New Order Button -->
<button onclick="openModal()">Make New Order</button>

<!-- Orders Table -->
<table>
    <tr>
        <th>Order ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Total Price</th>
        <th>Order Date</th>
    </tr>
    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
        <tr>
            <td><?= $row["order_id"] ?></td>
            <td><?= $row["first_name"] ?></td>
            <td><?= $row["last_name"] ?></td>
            <td>$<?= $row["total_price"] ?></td>
            <td><?= $row["order_date"] ?></td>
        </tr>
    <?php } ?>
</table>

<!-- Modal for Order Form -->
<div id="orderModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>New Order</h2>
        <form action="process_order.php" method="POST">
            <label>First Name:</label>
            <input type="text" name="first_name" required>

            <label>Last Name:</label>
            <input type="text" name="last_name" required>

            <label>Address:</label>
            <input type="text" name="address" required>

            <label>City:</label>
            <input type="text" name="city" required>

            <label>State:</label>
            <input type="text" name="state" required>

            <label>Zip:</label>
            <input type="text" name="zip" required>

            <label>Phone:</label>
            <input type="text" name="phone" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Order Date:</label>
            <input type="date" name="order_date" required>

            <label>Pickup Date:</label>
            <input type="date" name="pickup_date" required>

            <label>Item Description:</label>
<select name="description" id="description" onchange="updatePrice()" required>
    <option value="">Select an Item</option>
    <?php while ($item = mysqli_fetch_assoc($item_result)) { ?>
        <option value="<?= $item['items'] ?>" data-price="<?= $item['price'] ?>">
            <?= $item['items'] ?> - $<?= $item['price'] ?>
        </option>
    <?php } ?>
    <option value="other">Other (Add New Item)</option>
</select>

<label>Quantity:</label>
<input type="number" name="quantity" id="quantity" min="1" value="1" required onchange="updatePrice()">

<label>Unit Price:</label>
<input type="number" name="unit_price" id="unit_price" step="0.01" readonly>

<label>Total Price:</label>
<input type="number" name="total_price" id="total_price" step="0.01" readonly>
<button type="submit">Submit Order</button>

        </form>
    </div>
</div>

<!-- New Item Modal -->
<div id="newItemModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeNewItemModal()">&times;</span>
        <h2>Add New Item</h2>
        <label>Item Name:</label>
        <input type="text" id="new_item">
        <label>Price:</label>
        <input type="number" id="new_price" step="0.01">
        <button onclick="saveNewItem()">Save Item</button>
    </div>
</div>

</body>
</html>
