<?php
  require_once "controllers/get-global.php";
  require_once "controllers/post-global.php";
  require_once "controllers/put-global.php";
  require_once "controllers/delete-global.php";

  $Type = isset($_GET['type']) ?  $_GET['type'] : '';
  $ID = isset($_GET['id']) ?  $_GET['id'] : 0;
   
   switch ($METHOD){
      case 'GET': // Obtener
         // $Return = "Metodo";
         $Return = GetController::getData('regiones', $Json);
         if($Type == "all"){ 
            $Return = GetController::getData('regiones', $Json);
         }else if($Type == "one"){
            $Return = GetController::getDataFind('regiones','id', $ID);
         }
         else{
            $Return = ALERT(404, 'undefined parameter');
         }
      break;
      case 'POST': // Insertar
         $Return = PostController::setData('regiones', $Json);
         break;
      case 'PUT': // Actualizar
         $Return = PutController::setData('regiones', $Json);
         break;
      case 'DELETE': // Eliminar
         $Return = DeleteController::setData('regiones', $Json);
         // $Return = 'La funcion eliminar esta en construcción';
         break;
      default:
         $Return = ALERT(405, 'Method Not Allowed');
   } 
?>