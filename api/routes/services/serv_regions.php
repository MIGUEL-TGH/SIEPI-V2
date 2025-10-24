<?php
   require_once "controllers/cont_regions.php";

  $Type = isset($_GET['type']) ?  $_GET['type'] : '';
  $ID = isset($_GET['id']) ?  $_GET['id'] : 0;
   
   switch ($METHOD){
      case 'GET': // Obtener
         // if($Type == "points"){
         //    $Return = afromexicana::getData();
         // }else if($Type == "findId"){
         //    $Return = afromexicana::setFind($ID);
         // }
         // else if($Type == "admin"){
         //    $Return = afromexicana::getDataAdmin($ID);
         // }else if($Type == "infoID"){
         //    $Return = afromexicana::getInfoID($ID);
         // }else{
         //    $Return = ALERT(400, 'undefined parameter');
         // }
         break;
      case 'POST': // Insertar
         if($Type == 'itemsAdmin'){
            // $Return = afromexicana::CRUD($Json);
            $Return = regions::getDataAdmin($Json);
         }else if($Type == 'crud'){
            $Return = regions::CRUD($Json);
         }else{
            $Return = ALERT(400, 'Method under construction');
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