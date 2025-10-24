<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class afromexicana{
      //--------------------public access-------------------------------------------  
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT AF.Id_mun AS Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_, SUM(AF.A + AF.B + AF.C + AF.D + AF.E + AF.F + AF.G + AF.H + AF.I + AF.J + AF.K + AF.L + AF.M + AF.N + AF.P + AF.O + AF.Q + AF.R + AF.S) AS TOTAL
                                          FROM `afromexicana_por_municipio` AF, `municipios` M
                                          WHERE (AF.Id_Mun = M.id)
                                          GROUP BY AF.Id_Mun  
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
      static public function setFind($ID){
         $Item_BD = ModelsBD::getFilter("SELECT AF.Id, M.nombre AS Municipio, R.nombre AS Region, AF.Genero, AF.A, AF.B, AF.C, AF.D, AF.E, AF.F, AF.G, AF.H, AF.I, AF.J, AF.K, AF.L, AF.M, AF.N, AF.P, AF.O, AF.Q, AF.R, AF.S, SUM(AF.A + AF.B + AF.C + AF.D + AF.E + AF.F + AF.G + AF.H + AF.I + AF.J + AF.K + AF.L + AF.M + AF.N + AF.P + AF.O + AF.Q + AF.R + S) AS Total
                                       FROM `afromexicana_por_municipio` AF, `municipios` M, `regiones` R
                                       WHERE (AF.Id_Mun = M.id) AND (M.region = R.id) AND AF.Id_mun = $ID
                                       GROUP BY AF.Genero");
         $return = new response();
         if(!empty($Item_BD)){
            // extract($Item_BD);
            $result = array();
            $Total_ = 0;
            // $A = 1;

            foreach ($Item_BD as $item) {
               extract($item);
               $G_ = $Genero;
               $result['Total'.$G_] = intval($Total);
               $Total_ += intval($Total);
               $result['item_'.$G_] = array(
                     "Genero"  => $Genero,
                     "A"  => $A,
                     "B"  => $B,
                     "C"  => $C,
                     "D"  => $D,
                     "E"  => $E,
                     "F"  => $F,
                     "G"  => $G,
                     "H"  => $H,
                     "I"  => $I,
                     "J"  => $J,
                     "K"  => $K,
                     "L"  => $L,
                     "M"  => $M,
                     "N"  => $N,
                     "P"  => $P,
                     "O"  => $O,
                     "Q"  => $Q,
                     "R"  => $R,
                     "S"  => $S,
               );
            }

            $Women = $result['item_M'];
            $Man = $result['item_H'];
            extract($Item_BD);
            $item = array(
               "Id" => $Id,
               "title" => $Municipio,
               "Indicator"  => 'AFROMEXICANA',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array( 'desc' => 'Región', 'val' => $Region ),
                     array( 'desc' => 'Población Total', 'val' => number_format($Total_) ),
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Población por rango de edades',
                     "label" => 'En el municipio '.$Municipio. ', existe una población afromexicana de '.number_format($result['TotalM']).' mujeres y '.number_format($result['TotalH']).' hombres',
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array( 'M', 'H' ),
                        "header"  => false,
                        'headers' => array(
                           array('text' => 'RANGO DE EDADES', 'value' => 'desc'),
                           array('text' => 'HOMBRES', 'value' => 'H' ),
                           array('text' => 'MUJERES', 'value' => 'M' ),
                        ),
                        'items' => array(
                           array( 'M' => ($Women['A'] == '*') ? $Women['A'] : number_format($Women['A']), 'H' => ($Man['A'] == '*') ? $Man['A'] : number_format($Man['A']), 'desc' => 'De 0 a 4 años' ),
                           array( 'M' => ($Women['B'] == '*') ? $Women['B'] : number_format($Women['B']), 'H' => ($Man['B'] == '*') ? $Man['B'] : number_format($Man['B']), 'desc' => 'De 5 a 9 años' ),
                           array( 'M' => ($Women['C'] == '*') ? $Women['C'] : number_format($Women['C']), 'H' => ($Man['C'] == '*') ? $Man['C'] : number_format($Man['C']), 'desc' => 'De 10 a 14 años' ),
                           array( 'M' => ($Women['D'] == '*') ? $Women['D'] : number_format($Women['D']), 'H' => ($Man['D'] == '*') ? $Man['D'] : number_format($Man['D']), 'desc' => 'De 15 a 19 años' ),
                           array( 'M' => ($Women['E'] == '*') ? $Women['E'] : number_format($Women['E']), 'H' => ($Man['E'] == '*') ? $Man['E'] : number_format($Man['E']), 'desc' => 'De 20 a 24 años' ),
                           array( 'M' => ($Women['F'] == '*') ? $Women['F'] : number_format($Women['F']), 'H' => ($Man['F'] == '*') ? $Man['F'] : number_format($Man['F']), 'desc' => 'De 25 a 29 años' ),
                           array( 'M' => ($Women['G'] == '*') ? $Women['G'] : number_format($Women['G']), 'H' => ($Man['G'] == '*') ? $Man['G'] : number_format($Man['G']), 'desc' => 'De 30 a 34 años' ),
                           array( 'M' => ($Women['H'] == '*') ? $Women['H'] : number_format($Women['H']), 'H' => ($Man['H'] == '*') ? $Man['H'] : number_format($Man['H']), 'desc' => 'De 35 a 39 años' ),
                           array( 'M' => ($Women['I'] == '*') ? $Women['I'] : number_format($Women['I']), 'H' => ($Man['I'] == '*') ? $Man['I'] : number_format($Man['I']), 'desc' => 'De 40 a 44 años' ),
                           array( 'M' => ($Women['J'] == '*') ? $Women['J'] : number_format($Women['J']), 'H' => ($Man['J'] == '*') ? $Man['J'] : number_format($Man['J']), 'desc' => 'De 45 a 49 años' ),
                           array( 'M' => ($Women['K'] == '*') ? $Women['K'] : number_format($Women['K']), 'H' => ($Man['K'] == '*') ? $Man['K'] : number_format($Man['K']), 'desc' => 'De 50 a 54 años' ),
                           array( 'M' => ($Women['L'] == '*') ? $Women['L'] : number_format($Women['L']), 'H' => ($Man['L'] == '*') ? $Man['L'] : number_format($Man['L']), 'desc' => 'De 55 a 59 años' ),
                           array( 'M' => ($Women['M'] == '*') ? $Women['M'] : number_format($Women['M']), 'H' => ($Man['M'] == '*') ? $Man['M'] : number_format($Man['M']), 'desc' => 'De 60 a 64 años' ),
                           array( 'M' => ($Women['N'] == '*') ? $Women['N'] : number_format($Women['N']), 'H' => ($Man['N'] == '*') ? $Man['N'] : number_format($Man['N']), 'desc' => 'De 65 a 69 años' ),
                           array( 'M' => ($Women['P'] == '*') ? $Women['P'] : number_format($Women['P']), 'H' => ($Man['P'] == '*') ? $Man['P'] : number_format($Man['P']), 'desc' => 'De 70 a 74 años' ),
                           array( 'M' => ($Women['O'] == '*') ? $Women['O'] : number_format($Women['O']), 'H' => ($Man['O'] == '*') ? $Man['O'] : number_format($Man['O']), 'desc' => 'De 75 a 79 años' ),
                           array( 'M' => ($Women['Q'] == '*') ? $Women['Q'] : number_format($Women['Q']), 'H' => ($Man['Q'] == '*') ? $Man['Q'] : number_format($Man['Q']), 'desc' => 'De 80 a 84 años' ),
                           array( 'M' => ($Women['R'] == '*') ? $Women['R'] : number_format($Women['R']), 'H' => ($Man['R'] == '*') ? $Man['R'] : number_format($Man['R']), 'desc' => '85 años y más' ),
                           array( 'M' => ($Women['S'] == '*') ? $Women['S'] : number_format($Women['S']), 'H' => ($Man['S'] == '*') ? $Man['S'] : number_format($Man['S']), 'desc' => 'No especificado' )
                        ) 
                     )
                  )           
               )
            ); 
            $return->setResponse($item, null, null);
         }else{
            $return->setResponse($Item_BD, null, null);
         }
      }

      //--------------------private access-------------------------------------------  
      static public function getDataAdmin(){
         $Items_BD = ModelsBD::getFilter("SELECT AF.Id_mun AS id_mun, M.nombre AS Municipio, R.nombre AS Region,
                                          SUM(CASE WHEN Genero = 'M' THEN AF.A + AF.B + AF.C + AF.D + AF.E + AF.F + AF.G + AF.H + AF.I + AF.J + AF.K + AF.L + AF.M + AF.N + AF.P + AF.O + AF.Q + AF.R + AF.S ELSE 0 END) AS TotalM,
                                          SUM(CASE WHEN Genero = 'H' THEN AF.A + AF.B + AF.C + AF.D + AF.E + AF.F + AF.G + AF.H + AF.I + AF.J + AF.K + AF.L + AF.M + AF.N + AF.P + AF.O + AF.Q + AF.R + AF.S ELSE 0 END) AS TotalH,
                                          SUM(AF.A + AF.B + AF.C + AF.D + AF.E + AF.F + AF.G + AF.H + AF.I + AF.J + AF.K + AF.L + AF.M + AF.N + AF.P + AF.O + AF.Q + AF.R + AF.S) AS Total
                                          FROM `afromexicana_por_municipio` AF, `municipios` M, `regiones` R
                                          WHERE (AF.Id_Mun = M.id) AND (M.region = R.id)
                                          GROUP BY AF.Id_Mun  
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
      static public function getInfoID($ID){
         $Items_BD = ModelsBD::getFilter("SELECT * FROM `afromexicana_por_municipio` WHERE Id_Mun = $ID;");
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

         if(!preg_match("/^(\*|\d{1,5})$/", $data['value'])){
            return $return->setResponse(null, 'the value does not meet the required characteristics', 400);
         }

         $params = array(
            'id' => $data['id'],
            $data['column'] => $data['value']
         );

         $result = array();
         switch ($data['task']) {
            case '2':
               $result = ModelsBD::setUpdate('afromexicana_por_municipio', $params);
               if($result == null){
                  return $return->setResponse(null, 'incorrect parameters', 400);
               }
               break;
         // case '2':
         //    break;
            default:
               $return->setResponse(null, 'Task Not Found', 400);
               return;
         }

         $result['Task'] = 'save_item';
         $result['gender'] = $data['gender'];
         $return->setResponse($result, null, null);
      }
   }
?>