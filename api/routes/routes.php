<?php
   // $TASK = isset($_GET['Task']) ?  $_GET['Task'] : '*';
   // $Parameters = !empty($_GET) ? $_GET: [];

   header("Content-Type: application/json");
   $value = file_get_contents('php://input');
   $Json = json_decode($value, true);

   $Return = '';
   $REQ_URI = $_SERVER['REQUEST_URI'];
   $URI_EXP = explode("/", $REQ_URI);
   $URI_END = end($URI_EXP);
   $URI = !empty($_GET) ? explode("?", $REQ_URI)[0] : $REQ_URI;

   $METHOD = $_SERVER['REQUEST_METHOD'];
   
   if(empty($URI_END)){
      echo ALERT(400, 'Bad Request');
      return;
   }

   // $HEADERS = getallheaders();
   // if(!isset($HEADERS['apikey'])){
   //    echo ALERT(400, 'Bad Request'); //you are not authorized to make this request
   //    return;
   // }   
   
   // strtolower($URI);
   if(strlen($URI) != 0){
      switch (strtolower($URI)){
         // case '/api/users':
         //    include "services/serv_users.php";
         // break;
         case '/siepi-v2/api/login':
            include "services/serv_login.php";
         break;
         case '/siepi-v2/api/users':
            include "services/serv_users.php";
         break;
         case '/siepi-v2/api/uploadfile':
            include "services/serv_uploadfile.php";
         break;
         case '/siepi-v2/api/user_permissions':
            include "services/serv_user_permissions.php";
         break;

         //---------------------main-----------------------------
         case '/siepi-v2/api/visits':
            include "services/serv_visits.php";
         break;
         case '/siepi-v2/api/fuentes_info':
            include "services/serv_fuentes_info.php";
         break;

         //--------------------------------------------------
         case '/siepi-v2/api/regions':
            include "services/serv_regions.php";
         break;
         //--------------------map------------------------------
         case '/siepi-v2/api/map':
            include "services/serv_map.php";
         break;
         case '/siepi-v2/api/economy':
            include "services/serv_economy.php";
         break;
         case '/siepi-v2/api/migration':
            include "services/serv_migration.php";
         break;
         case '/siepi-v2/api/infrastructure':
            include "services/serv_infrastructure.php";
         break;
         case '/siepi-v2/api/governance':
            include "services/serv_governance.php";
         break;
         case '/siepi-v2/api/environment':
            include "services/serv_environment.php";
         break;
         case '/siepi-v2/api/health':
            include "services/serv_health.php";
         break;
         case '/siepi-v2/api/culture':
            include "services/serv_culture.php";
         break;
         case '/siepi-v2/api/justice':
            include "services/serv_justice.php";
         break;
         case '/siepi-v2/api/technology':
            include "services/serv_technology.php";
         break;
         case '/siepi-v2/api/education':
            include "services/serv_education.php";
         break;
         case '/siepi-v2/api/afromexicana':
            include "services/serv_afromexicana.php";
         break;
         case '/siepi-v2/api/lenguages':
            include "services/serv_lenguages.php";
         break;

         //--------------------------------------------------
         case '/api/regiones':
               include "services/serv_regiones.php";
            break;
         case '/siepi-v2/api/townhall': // Municipios
            include "services/serv_townhall.php";
         break;
         //--------------------------------------------------
         
         default:
            echo ALERT(406, 'Not Acceptable');
      }
      echo $Return;

   } else {
      echo ALERT(404, 'Not Found');
   }

   function ALERT($status, $result){
      $return = array(
         'status' => $status,
         'result' => $result,
      );
      return json_encode($return, http_response_code($return['status']));
   }

?> 