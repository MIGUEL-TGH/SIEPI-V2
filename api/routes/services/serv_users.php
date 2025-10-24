<?php
  require_once "controllers/cont_users.php";

  $type = isset($_GET['type']) ?  $_GET['type'] : '';
  $ID = isset($_GET['id']) ?  $_GET['id'] : 0;
   
   switch ($METHOD){
      case 'POST': // Insertar
         if($type == 'itemsAdmin'){
            $Return = users::getDataAdmin($Json);
         }else if($type == "crud"){
            $Return = users::CRUD($Json);
         }
         // else if($type == "modules"){
         //    $Return = users::getModules($Json);
         // }else if($type == "modules_permissions"){
         //    $Return = users::getModulesPermissions($Json);
         // }
         else{
            $Return = ALERT(400, 'undefined parameter');
         }
         break;
      default:
         $Return = ALERT(405, 'Method Not Allowed');
   } 
?>