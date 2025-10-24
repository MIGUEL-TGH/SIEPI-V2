<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class education{
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT EM.Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_
                                          FROM `educacion_por_municipio` EM, `municipios` M
                                          WHERE (EM.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
      static public function setFind($ID){
         // $Item_BD = ModelsBD::getFind("SELECT E.Id, M.nombre AS Municipio, R.nombre AS Region, E.RS, E.TCTM, E.CAM, E.Secundarias, E.Primarias, E.Preescolares, E.EATECS, E.IA, E.PIM, E.PIM_, E.EEIC, E.EEIU, E.EEIB, E.EEIT
         //                               FROM `educacion_por_municipio` E, `municipios` M, `regiones` R
         //                               WHERE (E.Id_Mun = M.id) AND (M.region = R.id) AND E.Id = $ID");
         $Item_BD = ModelsBD::getFind("SELECT E.Id, M.nombre AS Municipio, R.nombre AS Region, E.RS, E.TCTM, E.CAM, E.Secundarias, E.Primarias, E.Preescolares, E.EATECS, E.IA, E.PIM, E.PIM_
                                       FROM `educacion_por_municipio` E, `municipios` M, `regiones` R
                                       WHERE (E.Id_Mun = M.id) AND (M.region = R.id) AND E.Id = $ID");
        $return = new response();
        if(!empty($Item_BD)){
           extract($Item_BD);
     
            $item = array(
               "Id" => $Id,
               "title" => $Municipio,
               "Indicator"  => 'EDUCACIÓN',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array( 'val' => $Region, 'desc' => 'Región' ),
                     array( 'val' => $RS, 'desc' => 'Rezago social' ),
                     array( 'val' => number_format($TCTM), 'desc' => 'Total de Centros de Trabajo por Municipio' ) 
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Instalaciones educativas',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('text' => 'Description', 'value' => 'desc'),
                           array('text' => 'Info.', 'value' => 'val' )
                        ),
                        'items' => array(
                           array( 'val' => ($PIM == 'S/D') ? $PIM : number_format($PIM), 'desc' => 'Primarias indígenas por municipio' ),
                           array( 'val' => ($PIM_ == 'S/D') ? $PIM_ : number_format($PIM_), 'desc' => 'Preescolares indígenas por municipio' ),
                           // array( 'val' => ($EEIC == 'S/D') ? $EEIC : number_format($EEIC), 'desc' => 'Escuelas de educación indígena Completa' ),
                           // array( 'val' => ($EEIU == 'S/D') ? $EEIU : number_format($EEIU), 'desc' => 'Escuelas de educación indígena Unitarias' ),
                           // array( 'val' => ($EEIB == 'S/D') ? $EEIB : number_format($EEIB), 'desc' => 'Escuelas de educación indígena Bidocentes' ),
                           // array( 'val' => ($EEIT == 'S/D') ? $EEIT : number_format($EEIT), 'desc' => 'Escuelas de educación indígena Tridocentes' ),
                        ) 
                     )
                  ),
                  array(
                     "panel_header" => 'Porcentaje de instalaciones y servicios incluidos',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('text' => 'Description', 'value' => 'desc'),
                           array('text' => 'Info.', 'value' => 'val' )
                        ),
                        'items' => array(
                           array( 'val' => $CAM.' %', 'desc' => 'CAM (Centro de Atención Multiple)' ),
                           array( 'val' => $Secundarias.' %', 'desc' => 'Secundarias' ),
                           array( 'val' => $Primarias.' %', 'desc' => 'Primarias' ),
                           array( 'val' => $Preescolares.' %', 'desc' => 'Preescolares' ),
                           array( 'val' => $EATECS.' %', 'desc' => 'Escuelas con aulas que tienen equipo de cómputo que sirven' ),
                           array( 'val' => $IA.' %', 'desc' => 'Aulas con internet' ),
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
   }
?>