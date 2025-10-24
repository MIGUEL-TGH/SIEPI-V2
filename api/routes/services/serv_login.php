<?php
   require_once "controllers/cont_users.php";
   $Type = isset($_GET['type']) ?  $_GET['type'] : '';
   switch ($METHOD){
      case 'POST':
         
         if($Type == "init"){
            $Return = users::setLogin($Json);
         }else if($Type == "close"){
            $data['token'] = $Json['token'];
            $data['type'] = 'front';
            $Return = users::setLogout($data);
         }else if($Type == "validate"){
            $Return = users::setValidateToken($Json);
         }else if($Type == "token"){
            $Return = users::updateToken($Json);
         }else{
            $Return = ALERT(400, 'undefined parameter');
         }
         break;
      default:
         $Return = ALERT(405, 'Method Not Allowed');
   } 
?>