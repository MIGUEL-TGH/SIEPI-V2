<?php
   require_once "models/ModelsBD.php";

   class PutController{

      static public function setData($table, $params){
         $response = ModelsBD::setUpdate($table, $params);
         $return = new  PutController();
         $return->getResponse($response);
      }

      public function  getResponse($data){
         
         if(!empty($data)){
            $result = array(
               'status' => 200,
               'total' => (is_array($data)) ? count($data) : 1,
               'result' => $data,
            );
         }else{
            $result = array(
               'status' => 404,
               'result' => 'Result Not Found --> The data update is incorrect',
            );
         }

         echo json_encode($result, http_response_code($result['status']));
      }

  }
?>