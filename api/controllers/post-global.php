<?php
   // require_once "models/get-global-model.php";
   require_once "models/ModelsBD.php";

   class PostController{

      static public function setData($table, $params){
         $response = ModelsBD::setInsert($table, $params);
         $return = new  PostController();
         $return->getResponse($response);
      }

      static public function getData($table){
         $response = ModelsBD::getData($table);
         $return = new  GetController();
         $return->getResponse($response);
      }

      static public function getDataFind($table, $param, $id){

         $response = ModelsBD::getDataFind($table, $param, $id);
         $return = new  GetController();
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
               'result' => 'Result Not Found --> Los datos de la tabla no coinciden',
            );
         }
         echo json_encode($result, http_response_code($result['status']));
      }

  }
?>