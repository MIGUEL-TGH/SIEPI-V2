<?php

   require_once "models/ModelsBD.php";
   require_once "Response.php";
   class fuentes_info{
      public function __construct(){}
      //--------------------public access-------------------------------------------        
      static public function getIndicatorsMap(){
         $return = new response();

         $indicators = [
            'afromexicana' => 3,
            'culture' => 4,
            'economy' => 5,
            'education' => 6,
            'governance' => 7,
            'infrastructure' => 8,
            'justice' => 9,
            'lenguages' => 10,
            'environment' => 11,
            'migration' => 12,
            'health' => 13,
            'technology' => 14,
         ];

         $results = [];
         foreach ($indicators as $name => $idMod) {
            $query = "SELECT f.`desc_` AS `Desc_`, f.`link` AS `Link`
                        FROM `fuentes_informacion_v2` f
                        WHERE f.`id_mod` = $idMod AND f.`status` = 1
                        ORDER BY f.`id` ASC";
            $items = ModelsBD::getFilter($query);
            $results[] = [
                  'indicator' => $name,
                  'items' => $items,
                  'img' => null
            ];
         }

         return $return->setResponse($results, null, null);
      }

      //--------------------private access-------------------------------------------        
      static public function getItems(){
         $return = new response();
         //  validar datos
         // $valToken =  ModelsBD::setValToken($item);
         // if($valToken['status'] != 200){
         //    return $return->setResponse(null, $valToken['alert'], $valToken['status']);
         // }

         $Items_BD = ModelsBD::getFilter("SELECT f.`id`, m.description AS indicator ,f.`desc_`, f.`link`, f.`status` 
                                          FROM `fuentes_informacion_v2` f ,`modules_v2` m 
                                          WHERE (f.id_mod = m.id)
                                          ORDER BY f.`id` ASC;");
         if(!empty($Items_BD)){
            return $return->setResponse($Items_BD, null, null);
         }else{
            return $return->setResponse(null, '¡items not found!', 400);
         }
      }
      
      static public function getIndicators(){
         $return = new response();
         //  validar datos
         // $valToken =  ModelsBD::setValToken($item);
         // if($valToken['status'] != 200){
         //    return $return->setResponse(null, $valToken['alert'], $valToken['status']);
         // }

         $Items_BD = ModelsBD::getFilter("SELECT `id`, `description` FROM `modules_v2` WHERE `status` = 1 AND `map` = 1 ORDER BY `place` ASC;");
         if(!empty($Items_BD)){
            return $return->setResponse($Items_BD, null, null);
         }else{
            return $return->setResponse(null, '¡items not found!', 400);
         }
      }
      static public function CRUD($items){
      
         try{
            $return = new response();

            $params = array();
            // $result = array();
            switch ($items['task']) {
               case '1': // new element
                  
                  $param = $items['params'];
                  $params['id_mod'] = $param['indicator'];
                  $params['desc_'] = $param['desc'];
                  $params['link'] = $param['link'];
                  $params['status'] = ($param['status']) ? 1 : 0;

                  $response = ModelsBD::setInsert('fuentes_informacion_v2', $params);
                  if($response['status'] === 200){
                     $result["id"] = $response["id"];
                     $result["task"] = 'save_item';

                     return $return->setResponse($result, '', 200);
                  }else if ($response['status'] === 400){
                     return $return->setResponse(null, $response['alert'], $response['status']);
                  }
                  break;
               
               case '2': // update element
                  
                     $param = $items['params'];
                     $params['id'] = $param['id'];
                     $params['id_mod'] = $param['indicator'];
                     $params['desc_'] = $param['desc'];
                     $params['link'] = $param['link'];
                     $params['status'] = ($param['status']) ? 1 : 0;
   
                     $response = ModelsBD::setUpdate('fuentes_informacion_v2', $params);
                     if($response['status'] === 200){
                        $result["id"] = $params['id'];
                        // $result["status"] = $params['status'];
                        $result["task"] = 'update_item';
                        return $return->setResponse($result, '', 200);
                     }else if ($response['status'] === 400){
                        return $return->setResponse(null, $response['alert'], $response['status']);
                     }
   
   
                     break;



               default:
                  $return->setResponse(null, 'Task Not Found', 400);
                  return;
            }
            
         } catch(PDOException $e){  return null; }



      }
  }

?>