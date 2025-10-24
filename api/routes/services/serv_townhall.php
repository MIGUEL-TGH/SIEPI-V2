<?php
   require_once "controllers/cont_townhall.php";

  $Type = isset($_GET['type']) ?  $_GET['type'] : '';
  $ID = isset($_GET['id']) ?  $_GET['id'] : 0;
   
   switch ($METHOD){
      case 'GET': // Obtener
         if($Type == "points"){
            $Return = ALERT(400, 'parameter under construction');
         }else if($Type == "findId"){
            $Return = ALERT(400, 'parameter under construction');
         } else if($Type == "admin"){
            $Return = ALERT(400, 'parameter under construction');
         }else{
            $Return = ALERT(400, 'undefined parameter');
         }
      break;
      case 'POST': // Insertar
         if($Type == "byIndicator"){
            $Return = townhall::getDataForIndicators($Json);
         }else{
            $Return = ALERT(400, 'undefined parameter');
         }
         break;
      case 'PUT': // Actualizar
         $Return = ALERT(400, 'Method under construction');
         break;
      case 'DELETE': // Eliminar
         $Return = ALERT(400, 'Method under construction');
         break;
      default:
         $Return = ALERT(405, 'Method Not Allowed');
   } 
?>