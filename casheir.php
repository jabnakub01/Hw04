<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>คิดราคาสินค้า</title>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/loadingoverlay.min.js"></script>
</head>
<body>
    <h1>คิดราคาสินค้า</h1>
    <form action="" method="post" id="frmproduct">

        <p>
            รหัสสินค้า : <input type="text" name="pid" id="pid">
        </p>

        <p>
            จำนวน : <input type="text" name="qty" id="qty">
        </p>

        <p>
            ชื่อสินค้า : <input type="text" name="pname" id="pname">
        </p>
        
        <p>
            ราคาสินค้า : <input type="text" name="pprice" id="pprice">
        </p>

        <p>
            ราคารวม : <input type="text" name="total" id="total">
        </p>

        <p>
            <button type="submit">Find!</button>
            <button type="reset">Clear!</button>
        </p>
    </form>
    <script>
        $(document).ready(function(){
            $("#frmproduct").submit(function(){
                $.ajax({
                    url:"findProduct.php",
                    type:"post",
                    data:{
                        pid: $("#pid").val()
                    },
                    dataType:"json",
                    timeout:5000,
                    beforeSend:function(){
                        $.LoadingOverlay('show',{
                            image:'img/product/clock-loading.gif',
                            background:'rgba(200,b200,b200,b0.6)',
                            text:'Searching...',
                            testResizeFactor:0.15
                        });
                    },

                    success:(result)=>{
                        $("#pname").val(result.name);
                        $("#pprice").val(result.price);

                        var qty = ($("#qty").val())*1;
                        var total = result.price * qty;
                        $("#total").val(total);

                        //console.log(result);
                    },

                    complete:()=>$.LoadingOverlay('hide')
                });
                return false;
            });
        });
    </script>
</body>
</html>