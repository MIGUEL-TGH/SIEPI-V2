<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class migration{
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT MM.Id, M.nombre AS Municipio, M.latitud AS Lat_, M.longitud AS Long_, MM.PFNOE, MM.PMNOE
                                          FROM `migracion_por_municipio` MM, `municipios` M
                                          WHERE (MM.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         if(!empty($Items_BD)){
            foreach ($Items_BD as $Item){
               extract($Item);
               $PNOE = $PFNOE + $PMNOE;
               $Result[] = array(
                  "Id"  => $Id,
                  "title"  => $Municipio,
                  "Lat_"  => $Lat_,
                  "Long_"  => $Long_,
                  "PNOE"  => $PNOE,
               );
            }
            $return->setResponse($Result, null, null);
         }else{
            $return->setResponse($Items_BD, null, null);
         }       
      }
      static public function setFind($ID){
         $Item_BD = ModelsBD::getFind("SELECT MM.Id, M.nombre AS Municipio, R.nombre AS Region, MM.IGIM, MM.IGIM_2010, MM.IGIM_2020, MM.PFNOE, MM.PMNOE, MM.VT, MM.VRR, MM.ICR_2022
                                       FROM `migracion_por_municipio` MM, `municipios` M, `regiones` R 
                                       WHERE (MM.Id_Mun = M.id) AND (M.region = R.id) AND MM.Id = $ID");
         $return = new response();
         if(!empty($Item_BD)){
            extract($Item_BD);
            $PNOE = $PFNOE + $PMNOE;
            $item = array(
               "Id"  => $Id,
               "title"  => $Municipio,
               "Indicator"  => 'MIGRACIÓN',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array('desc' => 'Región', 'val' => $Region ),
                     array('desc' => 'Grado de intensidad migratoria', 'val' => $IGIM ),                  
                     array('desc' => 'Grado de intensidad migratoria (lugar que ocupa de intensidad por municipio en el estado, año 2010)', 'val' => number_format($IGIM_2010) ),
                     array('desc' => 'Grado de intensidad migratoria (lugar que ocupa el municipio a escala nacional, año 2020)', 'val' => number_format($IGIM_2020)),
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Indicador de Migración por Género (Distribución por porcentaje)',
                     "label" => 'Población nacida en otra entidad: '.number_format($PNOE),
                     "label_chart" => 'Gráfica de Migración por Género en porcentaje:',
                     "chart" => 'pie', //pie
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('sortable' => false, 'text' => 'POBLACIÓN', 'value' => 'desc'),
                           array('sortable' => false, 'text' => 'CANTIDAD', 'value' => 'val')
                        ),
                        'items' => array(
                           array('color' => '#FF9CCE', 'val' => number_format($PFNOE), 'data' => round(($PFNOE / $PNOE) * 100, 2), 'desc' => 'Femenina' ),
                           array('color' => '#2196F3', 'val' =>number_format($PMNOE), 'data' => round(($PMNOE / $PNOE) * 100, 2), 'desc' => 'Masculino' ),                  
                        )
                     )
                  ),
                  array(
                     "panel_header"  => 'Indicador de porcentaje de viviendas que reciben remesas',
                     "label"  => null,
                     "label_chart" => null,
                     "chart"  => null,
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('sortable' => false, 'text' => 'POBLACIÓN', 'value' => 'desc'),
                           array('sortable' => false, 'text' => 'CANTIDAD', 'value' => 'val')
                        ),
                        'items' => array(
                           array('val' => number_format($VT), 'desc' => 'Viviendas Totales' ),
                           array('val' => round($VRR, 2),  'desc' => 'Viviendas que reciben remesas' ),                  
                           array('val' => (round(($VRR / $VT) * 100, 2)).' %',  'desc' => 'Porcentaje' ),                  
                           array('val' => round($ICR_2022, 2),  'desc' => 'Cantidad de remesas 2024, primer trimestre (millones de dolares)' ),                  
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