<?php

use LDAP\Result;

   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class regions{
      //--------------------public access-------------------------------------------  
   
      //--------------------private access-------------------------------------------  
      static public function getDataAdmin($data){
         $return = new response();
         $ValToken =  ModelsBD::setValToken($data);
         if($ValToken['status'] != 200){
            return $return->setResponse(null, $ValToken['alert'], $ValToken['status']);
         }

         $Items_BD = ModelsBD::getFilter("SELECT `id`, `numero`, `nombre`, `sede`, `latitud`, `longitud`, `estatus` FROM `regiones_v2` ORDER BY `id`;");
         $return->setResponse($Items_BD, null, null);


         // $result = array();         
         // foreach ($Items_BD as $item) {
         //    $result[] = array(
         //       'id' => $item['id'],
         //       // 'numero' => ($item['numero'] == '*') ? $item['numero'] : number_format($item['numero']),
         //       'numero' => $item['numero'] ,
         //       'nombre' => $item['nombre'],
         //       'sede' => $item['sede'],
         //       'latitud' => $item['latitud'],
         //       'longitud' => $item['longitud'],
         //       'estatus' => $item['estatus'],
         //    );
         // }
         // print_r($result);
         // $return->setResponse($Items_BD, null, null);
      }
      static public function getInfoID($ID){
         $Items_BD = ModelsBD::getFilter("SELECT * FROM `afromexicana_por_municipio_v2` WHERE Id_Mun = $ID;");
         $return = new response();

         if(!empty($Items_BD)){

            $Women = array_filter($Items_BD, function ($element){
               return ($element['Genero']== 'M');
            });
            
            $Man = array_filter($Items_BD, function ($element){
               return ($element['Genero']== 'H');
            });

            $Women = reset($Women);
            $Man = reset($Man);
      
            $IDs = array(
               'M' => $Women['id'],
               'H' => $Man['id']
            );

            $items = array(
               array( 'M' => ($Women['A'] == '*') ? $Women['A'] : number_format($Women['A']), 'H' => ($Man['A'] == '*') ? $Man['A'] : number_format($Man['A']), 'column' => 'A', 'desc' => 'De 0 a 4 años' ),
               array( 'M' => ($Women['B'] == '*') ? $Women['B'] : number_format($Women['B']), 'H' => ($Man['B'] == '*') ? $Man['B'] : number_format($Man['B']), 'column' => 'B', 'desc' => 'De 5 a 9 años' ),
               array( 'M' => ($Women['C'] == '*') ? $Women['C'] : number_format($Women['C']), 'H' => ($Man['C'] == '*') ? $Man['C'] : number_format($Man['C']), 'column' => 'C', 'desc' => 'De 10 a 14 años' ),
               array( 'M' => ($Women['D'] == '*') ? $Women['D'] : number_format($Women['D']), 'H' => ($Man['D'] == '*') ? $Man['D'] : number_format($Man['D']), 'column' => 'D', 'desc' => 'De 15 a 19 años' ),
               array( 'M' => ($Women['E'] == '*') ? $Women['E'] : number_format($Women['E']), 'H' => ($Man['E'] == '*') ? $Man['E'] : number_format($Man['E']), 'column' => 'E', 'desc' => 'De 20 a 24 años' ),
               array( 'M' => ($Women['F'] == '*') ? $Women['F'] : number_format($Women['F']), 'H' => ($Man['F'] == '*') ? $Man['F'] : number_format($Man['F']), 'column' => 'F', 'desc' => 'De 25 a 29 años' ),
               array( 'M' => ($Women['G'] == '*') ? $Women['G'] : number_format($Women['G']), 'H' => ($Man['G'] == '*') ? $Man['G'] : number_format($Man['G']), 'column' => 'G', 'desc' => 'De 30 a 34 años' ),
               array( 'M' => ($Women['H'] == '*') ? $Women['H'] : number_format($Women['H']), 'H' => ($Man['H'] == '*') ? $Man['H'] : number_format($Man['H']), 'column' => 'H', 'desc' => 'De 35 a 39 años' ),
               array( 'M' => ($Women['I'] == '*') ? $Women['I'] : number_format($Women['I']), 'H' => ($Man['I'] == '*') ? $Man['I'] : number_format($Man['I']), 'column' => 'I', 'desc' => 'De 40 a 44 años' ),
               array( 'M' => ($Women['J'] == '*') ? $Women['J'] : number_format($Women['J']), 'H' => ($Man['J'] == '*') ? $Man['J'] : number_format($Man['J']), 'column' => 'J', 'desc' => 'De 45 a 49 años' ),
               array( 'M' => ($Women['K'] == '*') ? $Women['K'] : number_format($Women['K']), 'H' => ($Man['K'] == '*') ? $Man['K'] : number_format($Man['K']), 'column' => 'K', 'desc' => 'De 50 a 54 años' ),
               array( 'M' => ($Women['L'] == '*') ? $Women['L'] : number_format($Women['L']), 'H' => ($Man['L'] == '*') ? $Man['L'] : number_format($Man['L']), 'column' => 'L', 'desc' => 'De 55 a 59 años' ),
               array( 'M' => ($Women['M'] == '*') ? $Women['M'] : number_format($Women['M']), 'H' => ($Man['M'] == '*') ? $Man['M'] : number_format($Man['M']), 'column' => 'M', 'desc' => 'De 60 a 64 años' ),
               array( 'M' => ($Women['N'] == '*') ? $Women['N'] : number_format($Women['N']), 'H' => ($Man['N'] == '*') ? $Man['N'] : number_format($Man['N']), 'column' => 'N', 'desc' => 'De 65 a 69 años' ),
               array( 'M' => ($Women['P'] == '*') ? $Women['P'] : number_format($Women['P']), 'H' => ($Man['P'] == '*') ? $Man['P'] : number_format($Man['P']), 'column' => 'P', 'desc' => 'De 70 a 74 años' ),
               array( 'M' => ($Women['O'] == '*') ? $Women['O'] : number_format($Women['O']), 'H' => ($Man['O'] == '*') ? $Man['O'] : number_format($Man['O']), 'column' => 'O', 'desc' => 'De 75 a 79 años' ),
               array( 'M' => ($Women['Q'] == '*') ? $Women['Q'] : number_format($Women['Q']), 'H' => ($Man['Q'] == '*') ? $Man['Q'] : number_format($Man['Q']), 'column' => 'Q', 'desc' => 'De 80 a 84 años' ),
               array( 'M' => ($Women['R'] == '*') ? $Women['R'] : number_format($Women['R']), 'H' => ($Man['R'] == '*') ? $Man['R'] : number_format($Man['R']), 'column' => 'R', 'desc' => '85 años y más' ),
               array( 'M' => ($Women['S'] == '*') ? $Women['S'] : number_format($Women['S']), 'H' => ($Man['S'] == '*') ? $Man['S'] : number_format($Man['S']), 'column' => 'S', 'desc' => 'No especificado' )
            );

            $result = array(
               'search' => '',
               'headers' => array(
                  array('text' => 'Rango', 'value' => 'desc', 'class' => 'bg-dark white--text', 'width' => '60%'),
                  array('text' => 'Mujeres', 'value' => 'M', 'class' => 'bg-dark white--text', 'width' => '20%' ),
                  array('text' => 'Hombres', 'value' => 'H', 'class' => 'bg-dark white--text', 'width' => '20%' ),
               ),
               'IDs' => $IDs,
               'items' => $items
            );

            $return->setResponse($result, null, null);
         }
      }
      static public function CRUD($data){
         $return = new response();

         $ValToken =  ModelsBD::setValToken(
            array('token' =>$data['token'])
         );

         if($ValToken['status'] != 200){
            return $return->setResponse(null, $ValToken['alert'], $ValToken['status']);
         }

         if ($data['column'] == 'numero'){
            if(!preg_match("/^(\*|[-0-9]{1,8})$/", $data['value'])){
               return $return->setResponse(null, 'the value does not meet the required characteristics', 400);
            }
         } else if($data['column'] == 'nombre'){
            if(!preg_match("/^[\w\s.,áéíóúÁÉÍÓÚñÑüÜ]{1,100}$/", $data['value'])){
               return $return->setResponse(null, 'the value does not meet the required characteristics', 400);
            }
         } else if($data['column'] == 'sede'){
            if(!preg_match("/^[\w\s.,áéíóúÁÉÍÓÚñÑüÜ]{0,100}$/", $data['value'])){
               return $return->setResponse(null, 'the value does not meet the required characteristics', 400);
            }
         } else if($data['column'] == 'latitud' || $data['column'] == 'longitud'){
            if(!preg_match("/^[\-]{0,1}?\d{1,3}[\.]\d{1,17}$/", $data['value'])){
               return $return->setResponse(null, 'the value does not meet the required characteristics', 400);
            }
         } else{
            return $return->setResponse(null, 'parameter not found', 400);
         }

         $params = array(
            'id' => $data['id'],
            $data['column'] => $data['value']
         );

         $result = array();
         switch ($data['task']) {
            case '2':
               $result = ModelsBD::setUpdate('regiones_v2', $params);
               if($result == null){
                  return $return->setResponse(null, 'incorrect parameters', 400);
               }
               break;
            default:
               $return->setResponse(null, 'Task Not Found', 400);
               return;
         }

         $result['task'] = 'save_item';
         $result['id'] = $data['id'];
         $result['column'] = $data['column'];
         $return->setResponse($result, null, null);
      }
   }
?>