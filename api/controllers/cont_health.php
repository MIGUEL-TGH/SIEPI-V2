<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class health{
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT S.Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_, S.Poblacion
                                          FROM `salud_por_municipio` S, `municipios` M
                                          WHERE (S.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
      static public function setFind($ID){
         $Item_BD = ModelsBD::getFind("SELECT SM.Id, M.nombre AS Municipio, R.nombre AS Region, SM.Poblacion, SM.NH, SM.NM, SM.MH, SM.MM, SM.NE, SM.CE, SM.HG, SM.HE, SM.CSS, SM.SSS, SM.Otros, SM.PMISPS, SM.CTSC, SM.PCASS
                                       FROM `salud_por_municipio` SM, `municipios` M, `regiones` R 
                                       WHERE (SM.Id_Mun = M.id) AND (M.region = R.id) AND SM.Id = $ID");
         $return = new response();
         if(!empty($Item_BD)){
            extract($Item_BD);
            $NT = $NH + $NM;
            $MT = $MH + $MM + $NE;

            $item = array(
               "Id" => $Id,
               "title" => $Municipio,
               "Indicator"  => 'SALUD',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array( 'val' => $Region, 'desc' => 'Región' ),
                     array( 'val' => number_format($Poblacion), 'desc' => 'Poblacion total' ),
                     array( 'val' => number_format($PMISPS), 'desc' => 'Personal médico de las instituciones del sector público de salud' ),
                     array( 'val' => number_format($CTSC), 'desc' => 'Casas y técnicas en salud coordinadas por la SSA' ),
                     array( 'val' => $PCASS, 'desc' => 'Porcentaje carencia por acceso a los servicios de salud' ),
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Natalidad',
                     "label" => 'La natalidad en el municipio de '.$Municipio. ' es de '. number_format($NT). ' personas, lo que representa el '. round(($NT / $Poblacion) * 100, 2). ' % de la población total del mismo.',
                     "label_chart" => null,
                     "chart" => 'pie',
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('sortable' => false, 'text' => 'GENERO', 'value' => 'desc'),
                           array('sortable' => false, 'text' => 'NATALIDAD', 'value' => 'val')
                        ),
                        'items' => array(
                           array('color' => '#FF9CCE', 'val' => number_format($NM), 'data' => round(( $NM / $NT) * 100, 2), 'desc' => 'Mujeres' ),                  
                           array('color' => '#2196F3', 'val' => number_format($NH), 'data' => round(( $NH / $NT) * 100, 2), 'desc' => 'Hombres' ),
                        )
                     )
                  ),
                  array(
                     "panel_header" => 'Mortalidad',
                     "label" => 'La mortalidad en el municipio de '.$Municipio. ' es de '. number_format($MT). ' personas, lo que representa el '. round(($MT / $Poblacion) * 100, 2). ' % de la población total del mismo.',
                     "label_chart" => null,
                     "chart" => 'pie',
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('sortable' => false, 'text' => 'GENERO', 'value' => 'desc'),
                           array('sortable' => false, 'text' => 'MORTALIDAD', 'value' => 'val')
                        ),
                        'items' => array(
                           array('color' => '#FF9CCE', 'val' => number_format($MM), 'data' => round(( $MM / $MT) * 100, 2), 'desc' => 'Mujeres' ),                  
                           array('color' => '#2196F3', 'val' => number_format($MH), 'data' => round(( $MH / $MT) * 100, 2), 'desc' => 'Hombres' ),
                           array('color' => '#9B9B9B', 'val' => number_format($NE), 'data' => round(( $NE / $MT) * 100, 2), 'desc' => 'No especificado' ),
                        )
                     )
                  ),
                  array(
                     "panel_header" => 'Unidades médicas en servicio de las instituciones del sector público de salud por municipio',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array( 'val' ),
                        "header"  => true,
                        'headers' => array(
                           array('sortable' => false, 'text' => '', 'value' => 'desc'),
                           array('sortable' => false, 'text' => '', 'value' => 'val')
                        ),
                        'items' => array(
                           array('val' => number_format($CE), 'desc' => 'Nivel de atención de consulta externa' ),                  
                           array('val' => number_format($HG), 'desc' => 'Nivel de atención de hospitalización general' ),
                           array('val' => number_format($HE), 'desc' => 'Nivel de atención de hospitalización especializada' ),
                           array('val' => number_format($CSS), 'desc' => 'Con seguridad social (IMSS, ISSSTE,ISSSTEP,PEMEX Y SEDENA)' ),
                           array('val' => number_format($SSS), 'desc' => 'Sin seguridad social (IMSS/BIENESTAR Y SSA)' ),
                           array('val' => number_format($Otros), 'desc' => 'Otros (HU/BUAP Y DIF)' ),
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