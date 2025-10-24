<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class environment{
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT AM.Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_, AM.TMA
                                          FROM `medio_ambiente_por_municipio` AM, `municipios` M
                                          WHERE (AM.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
      static public function setFind($ID){
         $Item_BD = ModelsBD::getFind("SELECT AM.Id, M.nombre AS Municipio, R.nombre AS Region, AM.ICM, AM.TMA, AM.IPA, AM.TS, AM.US, AM.ITR, AM.ITV, AM.RH, AM.Cuenca, AM.Subcuenca, AM.CA, AM.C_A, AM.I_F, AM.TH, AM.Herbaceo, AM.Harboreo, AM.Arbustivo, AM.ITC
                                       FROM `medio_ambiente_por_municipio` AM, `municipios` M, `regiones` R 
                                       WHERE (AM.Id_Mun = M.id) AND (M.region = R.id) AND AM.Id = $ID");

         $return = new response();
         if(!empty($Item_BD)){
            extract($Item_BD);
            $item = array(
               "Id" => $Id,
               "title" => $Municipio,
               "Indicator"  => 'MEDIO AMBIENTE',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array('desc' => 'Región', 'val' => $Region),
                     array('desc' => 'Indicador del clima por municipio', 'val' => $ICM),
                     array('desc' => 'Temperatura media anual (grados Celcius)', 'val' => $TMA.'°'),
                     array('desc' => 'Indicador de precipitación anual', 'val' => $IPA),
                     array('desc' => 'Indicador de tipos de relieve', 'val' => $ITR),
                     array('desc' => 'Indicador de tipos de vegetación', 'val' => $ITV),
                     array('desc' => 'Indicador de talas clandestinas', 'val' => $ITC)
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Suelos',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('text' => 'Description', 'value' => 'desc'),
                           array('text' => 'Info.', 'value' => 'val' ),
                        ),
                        'items' => array(
                           array('val' => $TS, 'desc' => 'Tipos de suelo'),
                           array('val' => $US, 'desc' => 'Uso de suelo')
                        ) 
                     )
                  ),
                  array(
                     "panel_header" => 'Análisis de hidrología (ríos, manantiales, cuerpos de agua superficial)',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('text' => 'Description', 'value' => 'desc'),
                           array('text' => 'Info.', 'value' => 'val' ),
                        ),
                        'items' => array(
                           array('val' => $RH, 'desc' => 'Región Hidrológica'),
                           array('val' => $Cuenca, 'desc' => 'Cuenca'),
                           array('val' => $Subcuenca, 'desc' => 'Subcuenca'),
                           array('val' => $CA, 'desc' => 'Corrientes de agua'),
                           array('val' => $C_A, 'desc' => 'Cuerpos de agua')
                        ) 
                     )
                  ),
                  array(
                     "panel_header" => 'Incendios forestales y superficie afectada (hectáreas)',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('text' => 'Description', 'value' => 'desc'),
                           array('text' => 'Info.', 'value' => 'val' ),
                        ),
                        'items' => array(
                           array('val' => $I_F, 'desc' => 'Incendios forestales'),
                           array('val' => $TH, 'desc' => 'Total de Hectáreas'),
                           array('val' => $Herbaceo, 'desc' => 'Herbáceo'),
                           array('val' => $Harboreo, 'desc' => 'Harbóreo'),
                           array('val' => $Arbustivo, 'desc' => 'Arbustivo'),
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