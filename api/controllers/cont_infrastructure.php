<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class infrastructure{
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT IM.Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_, IM.TV
                                          FROM `infraestructura_por_municipio_v2` IM, `municipios_v2` M
                                          WHERE (IM.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }

      static public function setFind($ID){
         $Items_BD = ModelsBD::getFind("SELECT IM.Id, M.nombre AS Municipio, R.nombre AS Region, IM.TV, IM.AV, IM.EV, IM.DV, IM.CCEV_2020
                                       FROM `infraestructura_por_municipio_v2` IM, `municipios_v2` M, `regiones_v2` R 
                                       WHERE (IM.Id_Mun = M.id) AND (M.region = R.id) AND IM.Id = $ID");
         $return = new response();
         if(!empty($Items_BD)){
            extract($Items_BD);
            $item = array(
               "Id"  => $Id,
               "title"  => $Municipio,
               "Indicator"  => 'INFRAESTRUCTURA',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array('desc' => 'Región', 'val' => $Region ),
                     array('desc' => 'Carencia por calidad y espacios de la vivienda (Personas 2020)', 'val' => number_format($CCEV_2020) ),                  
                     array('desc' => 'Total de viviendas', 'val' => number_format($TV) ),                  
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Cobertura de servicios básicos por vivienda en el municipio',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => 'bar', // bar
                     "table" => array(
                        'class' => array( 'con', 'sin' ),
                        "header"  => false,
                        'headers' => array(
                           array('color' => null, 'sortable' => false, 'text' => 'SERVICIOS', 'value' => 'desc'),
                           array('color' => '#4CAF50', 'sortable' => false, 'text' => 'CON SERVICIOS', 'value' => 'con'),
                           array('color' => '#F44336', 'sortable' => false, 'text' => 'SIN SERVICIOS', 'value' => 'sin')
                        ),
                        'items' => array(
                           array( 'con' => number_format($EV), 'sin' => number_format($TV - $EV), 'desc' => 'Electricidad' ),
                           array( 'con' => number_format($AV), 'sin' => number_format($TV - $AV), 'desc' => 'Agua' ),
                           array( 'con' => number_format($DV), 'sin' => number_format($TV - $DV), 'desc' => 'Drenaje' ),
                        )
                     )
                  )
               )
            ); 
            $return->setResponse($item, null, null);
         }else{
            $return->setResponse($Items_BD, null, null);
         }
      }
  }
?>