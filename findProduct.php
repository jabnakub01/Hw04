<?php
    include("connect.php");
    $pid = $_POST["pid"];

    $sql = "SELECT * FROM product WHERE id=?";

    //prepare
    $stmt = $con->stmt_init();
    $stmt->prepare($sql);
    //bund parameter ?
    $stmt->bind_param('i',$pid);
    //execute
    $stmt->execute();

    $result = $stmt->get_result();

    $prd=array();
    if($result->num_rows>0){
        $prd=$result->fetch_array();
    }
    else{
        $prd["name"]="Product Not found";
        $prd["price"]=0;
    }

        $json = json_encode($prd);

        echo $json;
    ?>