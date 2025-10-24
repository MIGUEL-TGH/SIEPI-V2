<?php
   // require_once "models/get-global-model.php";
   require_once "models/ModelsBD.php";

   class GetController{

      static public function getData($table, $params){
         $return = new  GetController();

         $ValToken =  ModelsBD::setValToken($params);
         if($ValToken['res'] == 'not-auth' || $ValToken['res'] == 'expired'){
            return $return->getResponse(null, $ValToken['alert'], $ValToken['status']);
         }

         $response = ModelsBD::getData($table);
         $return->getResponse($response, null,null);
      }

      static public function getDataFind($table, $param, $id){

         $response = ModelsBD::getDataFind($table, $param, $id);
         $return = new  GetController();
         $return->getResponse($response, null);
      }

      public function getResponse($data, $error, $status){
         
         if(!empty($data)){
            $result = array(
               'status' => 200,
               'total' => (is_array($data)) ? count($data) : 1,
               'result' => $data,
            );
         }else{

            if($error == null){
               $result = array(
                  'status' => 404,
                  'result' => 'Result Not Found',
               );
            }
            else{
               $result = array(
                  'status' => $status,
                  'result' => 'Error --> '.$error,
               );
            }
         }

         echo json_encode($result, http_response_code($result['status']));
      }

  }
?>