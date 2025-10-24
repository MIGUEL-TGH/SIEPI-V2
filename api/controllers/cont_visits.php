<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";
   class visits{
      private static $COMPONENTS = array(
         // 'index_comp' => '1',  
         'main' => '1',  
         'map' => '2',
         'que_es_el_siepi_comp' => '3',
         'postcards_comp' => '4',
         'materiales_didacticos_comp' => '5',
         'consejos_regionales_comp' => '6',
         'documentales_comp' => '7',
         'books_comp' => '8',
         'consejo_estatal_comp' => '9',
         'mid_comp' => '10'
      );

      private static $regex = array(
         'dateTime' => '/^\d+$/',  
      );

      public function __construct(){}
     
      static public function setVisits($item){
         try{
            $return = new response();
            // $microtime = microtime(true);
            // $timestampMilliseconds = round($microtime * 1000);
            // return $return->setResponse($timestampMilliseconds, '', 200);

            if (empty($item['dateTime']) || empty($item['comp'])) {
               return $return->setResponse(null, 'Required parameters are missing!', 400);
            }

            if(!preg_match(self::$regex['dateTime'], $item['dateTime'])){
               return $return->setResponse(null, 'the value does not meet the required characteristics', 400);
            }
            
            if (array_key_exists($item['comp'], self::$COMPONENTS)) {               
               $comp =  self::$COMPONENTS[$item['comp']];
               
               $params = array();
               $params['page'] = $comp;
               $params['date_time'] = $item['dateTime'];
               
               $response = ModelsBD::setInsert('visits', $params);
               if($response['status'] === 200){
                  return $return->setResponse($response['comment'], '', 200);
               }else if ($response['status'] === 400){
                  return $return->setResponse(null, $response['alert'], $response['status']);
               }

            }else{
               return $return->setResponse(null, 'incorrect parameters', 400);
            }            
            
         } catch(PDOException $e){  
            // return null; 
            return $return->setResponse(null, 'Database error occurred.', 500);
         }
      }
      static public function getVisits($item){
         $return = new response();
         // $valToken =  ModelsBD::setValToken(
         //    array('token' =>$item['token'])
         // );

         // if($valToken['status'] != 200){
         //    return $return->setResponse(null, $valToken['alert'], $valToken['status']);
         // }

         try{
            switch ($item['type']) {
               case 'global': 
                  $Items_BD = ModelsBD::getFilter(
                  "SELECT  v.page,  p.name AS name, COUNT(*) AS cant
                     FROM  visits v
                     JOIN  pages p ON p.id = v.page
                     GROUP BY  v.page, p.name
                     ORDER BY  p.name ASC;
                  "); 

                  $result = array(
                     "chart"  => null, //bar   pie    doughnut
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => false,
                        'headers' => array(
                           array('sortable' => false, 'text' => 'Componentes', 'value' => 'desc', 'class' => "bg-dark white--text"),
                           array('sortable' => false, 'text' => 'vistas', 'value' => 'val', 'class' => "bg-dark white--text")
                        ),
                        'items' => array()
                     )
                  );
                  $items_table = array();
                  foreach ($Items_BD as $item) {
                     $items_table[] = array(
                        'color' => '#FF8A65',
                        'page' => $item['page'],
                        'desc' => $item['name'],
                        'val' => number_format($item['cant']),
                        'data' => $item['cant'], 
                     );
                  };

                  $result['table']['items'] = $items_table;
                  $return->setResponse($result, null, null);
                  break;
               // case 'byID':
               //    break;
               default:
                  $return->setResponse(null, 'Task Not Found', 400);
                  return;
            }


            
         } catch(PDOException $e){  
            return $return->setResponse(null, 'Database error occurred.', 500);
         }
      }
  }
?>