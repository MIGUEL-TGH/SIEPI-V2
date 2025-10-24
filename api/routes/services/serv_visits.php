<?php
   require_once "controllers/cont_visits.php";
   $Type = isset($_GET['type']) ?  $_GET['type'] : '';

   switch ($METHOD){
      case 'POST':
         $Return = visits::setVisits($Json);
         break;
      case 'GET':
         if($Type == "global"){ 
            $params = array();
            $params['type'] = $Type;
            $params['token'] = isset($_GET['token']) ?  $_GET['token'] : '';
            $Return = visits::getVisits($params);
         }else if($Type == "byID"){
            $Return = 'En desarrollo';
         }
         else{
            $Return = ALERT(404, 'undefined parameter');
         }
         break;
      default:
         $Return = ALERT(405, 'Method Not Allowed');
   } 
?>