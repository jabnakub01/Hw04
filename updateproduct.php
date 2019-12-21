<?php
    session_start();
    include("connect.php");

    $pid = $_POST['hdnProductId'];
    $name = $_POST['txtName'];
    $description = $_POST['txtDescription'];
    $price = $_POST['txtPrice'];
    $unintInStock = $_POST['txtStock'];

    //Udate Picture
    $picture=$_POST['hdnProductPic'];
    echo $picture;
    if($_FILES["filepic"]["name"]!=""){
        //ถ้าอัพโหลดไฟล์เข้ามา ให้เก็บชื่อไฟล์เอาไว้ Update ด้วย
        $picture=$_FILES["filepic"]["name"];

        //Move file
        move_uploaded_file($_FILES["filepic"]["tmp_name"],"img/product/".$_FILES["filepic"]["name"]);
    }

    
    $sql = "UPDATE product SET name='$name', description='$description', price=$price, unintInStock=$unintInStock, picture='$picture' WHERE id=$pid";

    // echo $sql;
    // die();
    $result=$con->query($sql);
    if(!$result){
        echo "Error: ".$con->error;
    }
    else{
        header("Location: index.php");
    }
?>