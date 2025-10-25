<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class governance{
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT GM.Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_
                                          FROM `gobernanza_por_municipio_v2` GM, `municipios_v2` M
                                          WHERE (GM.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
      static public function setFind($ID){
         $Item_BD = ModelsBD::getFind("SELECT GM.Id, M.nombre AS Municipio, R.nombre AS Region, GM.PH, GM.PM, GM.SH, GM.SM, GM.RH, GM.RM, GM.IASC
                                       FROM `gobernanza_por_municipio_v2` GM, `municipios_v2` M, `regiones_v2` R 
                                       WHERE (GM.Id_Mun = M.id) AND (M.region = R.id) AND GM.Id = $ID");
         $return = new response();
         if(!empty($Item_BD)){
            extract($Item_BD);
            $item = array(
               "Id" => $Id,
               "title" => $Municipio,
               "Indicator"  => 'GOBERNABILIDAD Y GOBERNANZA',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array('desc' => 'Región', 'val' => $Region ),
                     array('desc' => 'Iniciativas aprobadas en sesión de cabildo', 'val' => number_format($IASC) )                
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Estructura de gobierno por municipio',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => 'bar',
                     "table" => array(
                        'class' => array( 'M', 'H' ),
                        "header"  => false,
                        'headers' => array(
                           array('color' => null, 'sortable' => false, 'text' => 'GOBIERNO', 'value' => 'desc'),
                           array('color' => '#FF9CCE', 'sortable' => false, 'text' => 'MUJERES', 'value' => 'M'),
                           array('color' => '#2196F3', 'sortable' => false, 'text' => 'HOMBRES', 'value' => 'H')
                        ),
                        'items' => array(
                           array( 'M' => number_format($PM), 'H' => number_format($PH), 'desc' => 'Presidentes' ),
                           array( 'M' => number_format($SM), 'H' => number_format($SH), 'desc' => 'Síndicos' ),
                           array( 'M' => number_format($RM), 'H' => number_format($RH), 'desc' => 'Regidores' ),
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