<?php
   require_once "controllers/cont_afromexicana.php";

  $Type = isset($_GET['type']) ?  $_GET['type'] : '';
  $ID = isset($_GET['id']) ?  $_GET['id'] : 0;
   
   switch ($METHOD){
      case 'GET': // Obtener
         if($Type == "points"){
            $Return = afromexicana::getData();
         }else if($Type == "findId"){
            $Return = afromexicana::setFind($ID);
         }
         else if($Type == "admin"){
            $Return = afromexicana::getDataAdmin($ID);
            // print_r($Json);
            // $Return = "Modo admn en desarrollo";
         }else if($Type == "infoID"){
            // $Return = 'infoID';
            $Return = afromexicana::getInfoID($ID);
         }else{
            $Return = ALERT(400, 'undefined parameter');
         }
      break;
      case 'POST': // Insertar
         // $Return = PostController::setData('regiones', $Json);
         // $Return = ALERT(400, 'Method under construction');
         if($Type == 'crud'){
            $Return = afromexicana::CRUD($Json);
         }

         break;
      case 'PUT': // Actualizar
         // $Return = PutController::setData('regiones', $Json);
         $Return = ALERT(400, 'Method under construction');
         break;
      case 'DELETE': // Eliminar
         // $Return = DeleteController::setData('regiones', $Json);
         $Return = ALERT(400, 'Method under construction');
         break;
      default:
         $Return = ALERT(405, 'Method Not Allowed');
   } 
?>