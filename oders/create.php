<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// get database connection
include_once '../config/connectdb.php';
 
// instantiate order object
include_once '../objects/orders.php';
 
$database = new Database();
$db = $database->getConnection();
 
$order = new Order($db);
 
// get posted data
$data = json_decode(file_get_contents("php://input"));

// set order property values
$order->customer_name = $data->customer_name;
$order->customer_phone = $data->customer_phone;
$order->customer_add = $data->customer_add;
$order->total_money = $data->total_money;
$order->payment = $data->payment;
$order->gender = $data->gender;
$order->order_date = date('Y-m-d H:i:s');
$order->note = $data->note;
$order->status = $data->status;
// create the order
if($order->create()){
    echo '{';
        echo '"message": "Tạo mới một đơn hàng thành công"';
    echo '}';
}
 
// if unable to create the order, tell the order
else{
    echo '{';
        echo '"message": "Tạo mới thất bại"';
    echo '}';
}
?>