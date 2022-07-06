<?php
include "conn.php";
$sql = "SELECT * FROM customer";
$query = mysqli_query($conn, $sql);
while($data = mysqli_fetch_array($query))
    //echo $data["nama"]." ";

    $item[]= array(
        'Nama'=>$data["nama"],
        'Jenis Kelamin'=>$data["jenis_kelamin"],
        'Telepon'=>$data["telepon"],
        'Alamat'=>$data["alamat"],
    );
    $response = array(
        'status'=>'OK',
        'data'=>$item
    );
    echo json_encode($response);

?>