<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";
   // require_once "cont_users.php";

   class townhall{
      //--------------------public access-------------------------------------------  
      



      //--------------------private access-------------------------------------------  
      static public function getDataForIndicators($data){
         $return = new response();
         $ValToken =  ModelsBD::setValToken($data);
         if($ValToken['status'] != 200){
            return $return->setResponse(null, $ValToken['alert'], $ValToken['status']);
         }
         $Items_BD = ModelsBD::getFilter("SELECT M.id, M.nombre AS nombre_municipio, R.nombre AS nombre_region 
                                          FROM municipios_v2 M 
                                          JOIN regiones_v2 R ON M.region = R.id 
                                          ORDER BY M.id ASC;");
         $return->setResponse($Items_BD, null, null);
      }
   }
?>