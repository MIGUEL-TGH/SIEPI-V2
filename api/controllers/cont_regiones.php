<?php
   require_once "models/ModelsBD.php";
   // require_once "models/getModel.php";

   class regiones{

      static public function getData($table, $id){
         $Items_BD = ModelsBD::SelectFrom("SELECT * FROM `regiones_v2`");
         return self::getResponse($Items_BD);
      }

      public function  getResponse($data){
         if(!empty($data)){
            $result = array(
               'status' => 200,
               'total' => count($data),
               'result' => $data,

            );
         }else{
            $result = array(
               'status' => 404,
               'result' => 'Not Found',
            );
         }
         return json_encode($result, http_response_code($result['status']));
      }

  }
?>