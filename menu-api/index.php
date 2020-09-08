<?php require_once('conn/connect.php');?> 
 <?php     
      header('Content-Type: application/json');    
 
     $ver=$_GET['id'];
     $type=$_GET['type'];


//  thai Vertion
if ($ver=='th'&& $type==''){
        $sql = "SELECT * FROM food INNER JOIN type ON food.type_id = type.type_id";
        $result=mysqli_query($conn,$sql);
        if($result && $result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $json_data[] = array(
                    "Id" => $row['food_id'],
                    "Nameth" => $row['food_name_th'],
                    "Price" => $row['food_price'],
                    "Detail" => $row['food_detail_th'],
                    "Update" => $row['update_time'],
                    "insert" => $row['insert_time']
                    
                );
            }
        }
       
    // แปลง array เป็นรูปแบบ json string  
    if(isset($json_data)){  
        $json= json_encode($json_data, JSON_PRETTY_PRINT);    
        if(isset($_GET['callback']) && $_GET['callback']!=""){    
        echo $_GET['callback']."(".$json.");";        
        }else{    
        echo $json;    
        }    
    }
}
elseif ($ver=='th' && $type==$_GET['type']){
        $sql = "SELECT * FROM food INNER JOIN type ON food.type_id = type.type_id WHERE food.type_id =$type";
        $result=mysqli_query($conn,$sql);
        if($result && $result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $json_data[] = array(
                    "Id" => $row['food_id'],
                    "Nameth" => $row['food_name_th'],
                    "Price" => $row['food_price'],
                    "Detail" => $row['food_detail_th'],
                    "Update" => $row['update_time'],
                    "insert" => $row['insert_time']
                    
                );
            }
        }  
    // แปลง array เป็นรูปแบบ json string  
    if(isset($json_data)){  
        $json= json_encode($json_data, JSON_PRETTY_PRINT);    
        if(isset($_GET['callback']) && $_GET['callback']!=""){    
        echo $_GET['callback']."(".$json.");";        
        }else{    
        echo $json;    
        }    
    }
}

//  English Vertion
elseif ($ver=='en'&& $type==''){
    $sql = "SELECT * FROM food INNER JOIN type ON food.type_id = type.type_id";
    $result=mysqli_query($conn,$sql);
    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $json_data[] = array(
                "Id" => $row['food_id'],
                "Nameth" => $row['food_name_eng'],
                "Price" => $row['food_price'],
                "Detail" => $row['food_detail_eng'],
                "Update" => $row['update_time'],
                "insert" => $row['insert_time']
            );
        }
    }

    // แปลง array เป็นรูปแบบ json string  
    if(isset($json_data)){  
        $json= json_encode($json_data, JSON_PRETTY_PRINT);    
        if(isset($_GET['callback']) && $_GET['callback']!=""){    
        echo $_GET['callback']."(".$json.");";        
        }else{    
        echo $json;    
        }    
    }
} 
elseif ($ver=='en'&& $type==$_GET['type']){
    $sql = "SELECT * FROM food INNER JOIN type ON food.type_id = type.type_id WHERE food.type_id =$type";
    $result=mysqli_query($conn,$sql);
    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $json_data[] = array(
                "Id" => $row['food_id'],
                "Nameth" => $row['food_name_eng'],
                "Price" => $row['food_price'],
                "Detail" => $row['food_detail_eng'],
                "Update" => $row['update_time'],
                "insert" => $row['insert_time']
            );
        }
    }

    // แปลง array เป็นรูปแบบ json string  
    if(isset($json_data)){  
        $json= json_encode($json_data, JSON_PRETTY_PRINT);    
        if(isset($_GET['callback']) && $_GET['callback']!=""){    
        echo $_GET['callback']."(".$json.");";        
        }else{    
        echo $json;    
        }    
    }
} 
else{
    header( "Location: 404.html" );
}
?>