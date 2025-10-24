<?php
   require_once "controllers/cont_technology.php";

  $Type = isset($_GET['type']) ?  $_GET['type'] : '';
  $ID = isset($_GET['id']) ?  $_GET['id'] : 0;
   
   switch ($METHOD){
      case 'GET': // Obtener
         if($Type == "points"){
            $Return = technology::getData();
         }else if($Type == "findId"){
            $Return = technology::setFind($ID);
         }
         else{
            $Return = ALERT(400, 'undefined parameter');
         }
      break;
      case 'POST': // Insertar
         // $Return = PostController::setData('regiones', $Json);
         break;
      case 'PUT': // Actualizar
         // $Return = PutController::setData('regiones', $Json);
         break;
      case 'DELETE': // Eliminar
         // $Return = DeleteController::setData('regiones', $Json);
         break;
      default:
         $Return = ALERT(405, 'Method Not Allowed');
   } 
?>