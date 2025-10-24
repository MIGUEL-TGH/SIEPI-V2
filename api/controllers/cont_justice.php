<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class justice{
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT Jus.Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_, Jus.DVF_2022
                                          FROM `justicia_seguridad_por_municipio` Jus, `municipios` M
                                          WHERE (Jus.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
      static public function setFind($ID){
         // $Item_BD = ModelsBD::getFind("SELECT Just.Id, M.nombre AS Municipio, R.nombre AS Region, Just.CDPM, Just.COD, Just.ICJI, Just.DVF_2022, Just.DVGTSDVF_2022, Just.BE, Just.BC, Just.TP, Just.Ejidos, Just.Comunidades, Just.NA
         //                               FROM `justicia_seguridad_por_municipio` Just, `municipios` M, `regiones` R 
         //                               WHERE (Just.Id_Mun = M.id) AND (M.region = R.id) AND Just.Id = $ID");
         $Item_BD = ModelsBD::getFind("SELECT Just.Id, M.nombre AS Municipio, R.nombre AS Region, Just.ICJI, Just.DVF_2022, Just.DVGTSDVF_2022, Just.BE, Just.BC, Just.TP, Just.Ejidos, Just.Comunidades, Just.NA
                                       FROM `justicia_seguridad_por_municipio` Just, `municipios` M, `regiones` R 
                                       WHERE (Just.Id_Mun = M.id) AND (M.region = R.id) AND Just.Id = $ID");
         $return = new response();
         if(!empty($Item_BD)){
            extract($Item_BD);

            $item = array(
               "Id" => $Id,
               "title" => $Municipio,
               "Indicator"  => 'JUSTICA Y SEGURIDAD',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array( 'val' => $Region, 'desc' => 'Región' ),
                     array( 'val' => number_format($ICJI), 'desc' => 'Indicador cuantitativo de juzgados índigenas' ),
                     array( 'val' => number_format($TP), 'desc' => 'Trata de Personas 2022' ) 
                  ) 
               ),
               "panels"  => array(
                  // array(
                  //    "panel_header" => 'Indicador cuantitativo de poder judicial por municipio (tribunales)',
                  //    "label" => null,
                  //    "label_chart" => null,
                  //    "chart" => null,
                  //    "table" => array(
                  //       'class' => array( 'val' ),
                  //       "header"  => true,
                  //       'headers' => array(
                  //          array('text' => 'Description', 'value' => 'desc'),
                  //          array('text' => 'Info.', 'value' => 'val' )
                  //       ),
                  //       'items' => array(
                  //          array( 'val' => number_format($CDPM), 'desc' => 'Con domicilio en la presidencia municipal' ),
                  //          array( 'val' => number_format($COD), 'desc' => 'Con otro domicilio' ),
                  //       ) 
                  //    )
                  // ),
                  array(
                     "panel_header" => 'Indicador cuantitativo en temas de equidad de género (Violencia intrafamiliar, género, infantil)',
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
                           array( 'val' => number_format($DVF_2022), 'desc' => 'Delitos de violencia Familiar 2022' ),
                           array( 'val' => number_format($DVGTSDVF_2022), 'desc' => 'Delitos de violencia de genero en todas sus modalidades distinta a la violencia familiar 2022' ),
                        ) 
                     )
                  ),
                  array(
                     "panel_header" => 'Indicador cuantitativo del derecho agrario',
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
                           array( 'val' => ($BE == 'S/D') ? $BE : number_format($BE), 'desc' => 'Beneficados Ejidatarios' ),
                           array( 'val' => ($BC == 'S/D') ? $BC : number_format($BC), 'desc' => 'Beneficiados Comuneros' ),
                        ) 
                     )
                  ),
                  array(
                     "panel_header" => 'Indicador cuantitativo de tenencia y posesión de la tierra por municipio',
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
                           array( 'val' => ($Ejidos == 'S/D') ? $Ejidos : number_format($Ejidos), 'desc' => 'Ejidos' ),
                           array( 'val' => ($Comunidades == 'S/D') ? $Comunidades : number_format($Comunidades), 'desc' => 'Comunidades' ),
                           array( 'val' => ($NA == 'S/D') ? $NA : number_format($NA), 'desc' => 'Núcleos Agrarios' ),
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