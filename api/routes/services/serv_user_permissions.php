<?php
  require_once "controllers/cont_users.php";

  $type = isset($_GET['type']) ?  $_GET['type'] : '';
  $ID = isset($_GET['id']) ?  $_GET['id'] : 0;
   
   switch ($METHOD){
      case 'POST':
         if($type == 'itemsAdmin'){
            $Return = users::getUsersToPermissions($Json);
         }else if($type == 'crud_permissions'){
            $Return = users::crud_permissions($Json);
         }else if($type == 'modules'){
            $Return = users::getModules($Json);
         }else if($type == 'all_modules'){
            $Return = users::getAllModules($Json);
         }else if($type == 'permissions'){
            $Return = users::getUserPermissions($Json);
         }else{
            $Return = ALERT(400, 'undefined parameter');
         }
         break;
      default:
         $Return = ALERT(405, 'Method Not Allowed');
   } 
?>