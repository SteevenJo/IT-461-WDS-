<?php
include 'connect.php';

if (isset($_GET['order_id'])) {
    $order_id = intval($_GET['order_id']);

    $sql = "SELECT order_list.order_id, data_info_user.first_name, data_info_user.last_name, 
                   order_details.description, order_details.quantity, order_details.unit_price, 
                   order_list.total_price, order_list.order_date, order_list.pickup_date
            FROM order_list
            JOIN data_info_user ON order_list.user_id = data_info_user.id
            JOIN order_details ON order_list.order_id = order_details.order_id
            WHERE order_list.order_id = $order_id";

    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        echo "<p><strong>Customer:</strong> " . $row["first_name"] . " " . $row["last_name"] . "</p>";
        echo "<p><strong>Order ID:</strong> " . $row["order_id"] . "</p>";
        echo "<p><strong>Item:</strong> " . $row["description"] . "</p>";
        echo "<p><strong>Quantity:</strong> " . $row["quantity"] . "</p>";
        echo "<p><strong>Unit Price:</strong> $" . number_format($row["unit_price"], 2) . "</p>";
        echo "<p><strong>Total Price:</strong> $" . number_format($row["total_price"], 2) . "</p>";
        echo "<p><strong>Order Date & Time:</strong> " . date("F j, Y, g:i A", strtotime($row["order_date"])) . "</p>";
        echo "<p><strong>Pickup Date:</strong> " . $row["pickup_date"] . "</p>";
    } else {
        echo "<p>Order details not found.</p>";
    }
} else {
    echo "<p>Invalid request.</p>";
}
?>
