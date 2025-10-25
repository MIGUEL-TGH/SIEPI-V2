<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class culture{
      static public function setItemsTable($items){
         $newItems = [];
         foreach ($items as $item) {
            $newItems[] = ["desc" => $item];
         }
         return $newItems;
      }
      static public function getData(){
         $Items_BD = ModelsBD::SelectFrom("SELECT CM.Id, M.nombre AS title, M.latitud AS Lat_, M.longitud AS Long_, CM.PPA
                                          FROM `cultura_por_municipio_v2` CM, `municipios_v2` M
                                          WHERE (CM.Id_Mun = M.id)
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
      static public function setFind($ID){
         $Item_BD = ModelsBD::getFind("SELECT CM.Id, M.nombre AS Municipio, R.nombre AS Region, CM.Tradiciones, CM.EIC, CM.CC, CM.Museos, CM.Bibliotecas, CM.Auditorios, CM.CD, CM.PPA
                                       FROM `cultura_por_municipio_v2` CM, `municipios_v2` M, `regiones_v2` R
                                       WHERE (CM.Id_Mun = M.id) AND (M.region = R.id) AND CM.Id = $ID");
         $return = new response();
         if(!empty($Item_BD)){
            extract($Item_BD);
            
            $aItems = new culture();
            $aTradiciones = $aItems->setItemsTable(explode("\n", $Tradiciones));
            $aCasaCultura = $aItems->setItemsTable(explode("\n", $CC));
            $aMuseos = $aItems->setItemsTable(explode("\n", $Museos));
            $aBibliotecas = $aItems->setItemsTable(explode("\n", $Bibliotecas));
            $aAuditorios = $aItems->setItemsTable(explode("\n", $Auditorios));
            $aCD = $aItems->setItemsTable(explode("\n", $CD));

            $item = array(
               "Id" => $Id,
               "title" => $Municipio,
               "Indicator"  => 'CULTURA',
               "Table_01" => array( // Datos Generales
                  'class' => array( 'val' ),
                  'header' => true,
                  'headers' => array(
                     array('text' => 'Description', 'value' => 'desc'),
                     array('text' => 'Info.', 'value' => 'val' ),
                  ),
                  'items' => array(
                     array( 'val' => $Region, 'desc' => 'Región' ),
                     array( 'val' => ($EIC == 'S/D') ? $EIC : number_format($EIC), 'desc' => 'Espacios de intercambio cultural' ),
                     array( 'val' => ($PPA == 'S/D') ? $PPA : number_format($PPA), 'desc' => 'Proporción de Población afromexicana' )            
                  ) 
               ),
               "panels"  => array(
                  array(
                     "panel_header" => 'Tradiciones',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array(),
                        "header"  => true,
                        'headers' => array(
                           array( 'text' => '', 'value' => 'desc' )
                        ),
                        'items' => $aTradiciones
                     )
                  ),
                  array(
                     "panel_header" => 'Casas de la cultura',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array(),
                        "header"  => true,
                        'headers' => array(
                           array( 'text' => '', 'value' => 'desc' )
                        ),
                        'items' => $aCasaCultura
                     )
                  ),
                  array(
                     "panel_header" => 'Museos',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array(),
                        "header"  => true,
                        'headers' => array(
                           array( 'text' => '', 'value' => 'desc' )
                        ),
                        'items' => $aMuseos
                     )
                  ),
                  array(
                     "panel_header" => 'Bibliotecas',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array(),
                        "header"  => true,
                        'headers' => array(
                           array( 'text' => '', 'value' => 'desc' )
                        ),
                        'items' => $aBibliotecas
                     )
                  ),
                  array(
                     "panel_header" => 'Auditorios',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array(),
                        "header"  => true,
                        'headers' => array(
                           array( 'text' => '', 'value' => 'desc' )
                        ),
                        'items' => $aAuditorios
                     )
                  ),
                  array(
                     "panel_header" => 'Centros deportivos',
                     "label" => null,
                     "label_chart" => null,
                     "chart" => null,
                     "table" => array(
                        'class' => array(),
                        "header"  => true,
                        'headers' => array(
                           array( 'text' => '', 'value' => 'desc' )
                        ),
                        'items' => $aCD
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