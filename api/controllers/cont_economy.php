<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class economy{
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT E.Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_, E.Poblacion
                                          FROM `economia_por_municipio` E, `municipios` M
                                          WHERE (E.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }

      static public function setFind($ID){
         $Item_BD = ModelsBD::getFind("SELECT E.Id, M.nombre AS Municipio, R.nombre AS Region, E.Poblacion, E.GMM, E.PM, E.PE, E.ACEAAFPC, E.C_Menor, E.C_Mayor, E.Ind_M, E.SATPAB, E.Otros, E.Micro, E.Pequenia, E.Mediana, E.Grande, E.PO, E.PD, E.Fecha
                                       FROM `economia_por_municipio` E, `municipios` M, `regiones` R 
                                       WHERE (E.Id_Mun = M.id) AND (M.region = R.id) AND E.Id = $ID");
         $return = new response();
         if(!empty($Item_BD)){
            extract($Item_BD);
            $PT = $PM + $PE;
            $Micro_ = preg_replace('/[^0-9]+/', '', $Micro);
            $Pequenia_ = preg_replace('/[^0-9]+/', '', $Pequenia);
            $Mediana_ = preg_replace('/[^0-9]+/', '', $Mediana);
            $Grande_ = preg_replace('/[^0-9]+/', '', $Grande);

            $item = array(
               "Id" => $Id,
               "title" => $Municipio,
               "Indicator"  => 'ECONOMÍA',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array('desc' => 'Región', 'val' => $Region ),
                     array('desc' => 'Grado de Marginación Municipal', 'val' => $GMM ),                  
                     // array('desc' => 'Intensidad Migratoria', 'val' => $IM ),
                     array('desc' => 'Poblacion 2020', 'val' => number_format($Poblacion)),
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Nivel de pobreza',
                     "label" => 'En el municipio '.$Municipio. ', existe una población de '. number_format($PT). ' en situación de pobreza, que representa el '. round(($PT / $Poblacion) * 100, 2). '% respecto a la población total del municipio.',
                     "label_chart" => 'Gráfica del nivel de pobreza en porcentaje:',
                     "chart" => 'pie', //pie -- doughnut
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('sortable' => false, 'text' => 'POBREZA', 'value' => 'desc'),
                           array('sortable' => false, 'text' => 'POBLACIÓN', 'value' => 'val')
                        ),
                        'items' => array(
                           array('color' => '#FF8A65', 'val' => number_format($PM), 'data' => round(( $PM / $PT) * 100, 2), 'desc' => 'Moderada' ),
                           array('color' => '#BF360C', 'val' => number_format($PE), 'data' => round(( $PE / $PT) * 100, 2), 'desc' => 'Extrema' ),                  
                        )
                     )
                  ),
                  array(
                     "panel_header"  => 'Actividad Económica (agropecuaria, pecuaria, forestal, artesanal, etc.). Sectores económicos que concentraron mayores ingresos totales.',
                     "label"  => null,
                     "label_chart" => null,
                     "chart"  => null,
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('sortable' => false, 'text' => 'ACTIVIDAD ECONÓMICA', 'value' => 'desc'),
                           array('sortable' => false, 'text' => 'PORCENTAJE', 'value' => 'val')
                        ),
                        'items' => array(
                           array('val' => ($ACEAAFPC == 'S/D') ? $ACEAAFPC : $ACEAAFPC.' %', 'desc' => '1.- Agricultura, Cría y Explotación de Animales, Aprovechamiento Forestal, Pesca y Caza'),
                           array('val' => ($C_Menor == 'S/D') ? $C_Menor : $C_Menor.' %', 'desc' => '2.- Comercio al por menor'),                  
                           array('val' => ($C_Mayor == 'S/D') ? $C_Mayor : $C_Mayor.' %', 'desc' => '3.- Comercio al por mayor'),                  
                           array('val' => ($Ind_M == 'S/D') ? $Ind_M : $Ind_M.' %', 'desc' => '4.- Industrias manufactureras'),                  
                           array('val' => ($SATPAB == 'S/D') ? $SATPAB : $SATPAB.' %', 'desc' => '5.- Servicios de Alojamiento Temporal y de Preparación de Alimentos y Bebidas'),                  
                           array('val' => ($Otros == 'S/D') ? $Otros : $Otros.' %', 'desc' => '6.- Otros')               
                        )
                     )
                  ),
                  array(
                     "panel_header"  => 'Estratificación de las Unidades Económicas Rurales',
                     "label"  => null,
                     "label_chart" => 'Gráfica de la Unidades Económicas Rurales en porcentaje:',
                     "chart"  => 'pie', //doughnut
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => false,
                        'headers' => array(
                           array('sortable' => false, 'text' => 'TIPO', 'value' => 'desc'),
                           array('sortable' => false, 'text' => 'ESTABLECIMIENTOS', 'value' => 'val')
                        ),
                        'items' => array(
                           array('color' => ($Micro_ == '0') ? null : '#2196F3', 'val' => number_format($Micro_), 'data' => $Micro_, 'desc' => 'Micro (0-10 personas)'),
                           array('color' => ($Pequenia_ == '0') ? null : '#4CAF50', 'val' => number_format($Pequenia_),'data' => $Pequenia_, 'desc' => 'Pequeña (11-50 personas)'),
                           array('color' => ($Mediana_ == '0') ? null : '#F44336', 'val' => number_format($Mediana_), 'data' => $Mediana_, 'desc' => 'Mediana (51-250 personas)'),
                           array('color' => ($Grande_ == '0') ? null : '#9C27B0', 'val' => number_format($Grande_), 'data' => $Grande_, 'desc' => 'Grande (251 y más personas)')                     
                        )
                     )
                  ),
                  array(
                     "panel_header"  => 'Empleo',
                     "label"  => null,
                     "label_chart" => null,
                     "chart"  => 'bar', //pie    doughnut
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('sortable' => false, 'text' => '', 'value' => 'desc'),
                           array('sortable' => false, 'text' => '', 'value' => 'val')
                        ),
                        'items' => array(
                           array('color' => '#FF8A65', 'val' => number_format($PO), 'data' => $PO, 'desc' => 'Población Ocupada'),
                           array('color' => '#FFCCBC', 'val' => number_format($PD),'data' => $PD, 'desc' => 'Población Desocupada'),
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