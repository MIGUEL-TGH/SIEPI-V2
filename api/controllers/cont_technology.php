<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class technology{
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT Tec.Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_
                                          FROM `tecnologia_por_municipio_v2` Tec, `municipios_v2` M
                                          WHERE (Tec.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
      static public function setFind($ID){
         $Item_BD = ModelsBD::getFind("SELECT Tec.Id, M.nombre AS Municipio, R.nombre AS Region, Tec.ICHIGP, Tec.PWGCT, Tec.DOR, Tec.Televisor, Tec.CLT, Tec.LTF, Tec.TC, Tec.STP, Tec.SPMV, Tec.CV
                                       FROM `tecnologia_por_municipio_v2` Tec, `municipios_v2` M, `regiones_v2` R 
                                       WHERE (Tec.Id_Mun = M.id) AND (M.region = R.id) AND Tec.Id = $ID");
         $return = new response();
         if(!empty($Item_BD)){
            extract($Item_BD);

            $item = array(
               "Id" => $Id,
               "title" => $Municipio,
               "Indicator"  => 'TECNOLOGÍA 2020',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array( 'val' => $Region, 'desc' => 'Región' ),
                     array( 'val' => ($ICHIGP == 'S/D') ? $ICHIGP : number_format($ICHIGP), 'desc' => 'Indicador cuantitativo de hogares con internet gratuito y de paga' ),
                     array( 'val' => ($PWGCT == 'S/D') ? $PWGCT : number_format($PWGCT), 'desc' => 'Puntos de Wifi gratuito de CFE Telecomunicaciones' ) 
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Indicador cuantitativo del uso de las TICS (Viviendas particulares habitadas que disponen)',
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
                           array( 'val' => ($DOR == 'S/D') ? $DOR : number_format($DOR), 'desc' => 'Dispositivo para oír radio' ),
                           array( 'val' => ($Televisor == 'S/D') ? $Televisor : number_format($Televisor), 'desc' => 'Televisor' ),
                           array( 'val' => ($CLT == 'S/D') ? $CLT : number_format($CLT), 'desc' => 'Computadora, laptop o tablet' ),
                           array( 'val' => ($LTF == 'S/D') ? $LTF : number_format($LTF), 'desc' => 'Línea telefónica fija' ),
                           array( 'val' => ($TC == 'S/D') ? $TC : number_format($TC), 'desc' => 'Teléfono celular' ),
                           array( 'val' => ($STP == 'S/D') ? $STP : number_format($STP), 'desc' => 'Servicio de televisión de paga (Cable o satelital)' ),
                           array( 'val' => ($SPMV == 'S/D') ? $SPMV : number_format($SPMV), 'desc' => 'Servicio de películas, música o videos de paga por Internet' ),
                           array( 'val' => ($CV == 'S/D') ? $CV : number_format($CV), 'desc' => 'Consola de videojuegos' ),
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