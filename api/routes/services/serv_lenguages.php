<?php
   require_once "controllers/cont_lenguage.php";

  $Type = isset($_GET['type']) ?  $_GET['type'] : '';
  $ID = isset($_GET['id']) ?  $_GET['id'] : 0;
  $Search = isset($_GET['search']) ?  $_GET['search'] : '';
   
   switch ($METHOD){
      case 'GET': // Obtener
         if($Type == "points"){

            if($Search == 'Mun'){
               $Return = lenguage::getByTownHalls();
            }else if($Search == 'Reg'){
               $Return = lenguage::getByRegions();
            }else if($Search == 'MunLengua'){
               $Return = lenguage::getByLenguage($ID);
            }else{
               $Return = ALERT(400, 'undefined parameter');
            }

         }else{
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