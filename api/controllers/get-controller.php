<?php
   require_once "models/getModel.php";

   class GetController{
      static public function getData($table){
         $response = GetModel::getData($table);
         
         $return = new  GetController();
         $return->getResponse($response);

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

         echo json_encode($result, http_response_code($result['status']));


      }

  }
?>