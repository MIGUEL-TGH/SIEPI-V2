<?php
   require_once "models/ModelsBD.php";

   class DeleteController{

      static public function setData($table, $param){
         $response = ModelsBD::setDelete($table, $param);
         $return = new  DeleteController();
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
               'result' => 'Result Not Found --> The data delete is incorrect',
            );
         }

         echo json_encode($result, http_response_code($result['status']));
      }
  }
?>