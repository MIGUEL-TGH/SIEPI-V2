<?php
   require_once "models/ModelsBD.php";
   require_once "Response.php";

   class lenguage{      
      static public function getByTownHalls(){
         $result = array();
         $TownHalls = ModelsBD::SelectFrom("SELECT M.id, M.nombre, M.latitud AS Lat_, M.longitud AS Long_ FROM `municipios` M");
         if(!empty($TownHalls)){
            foreach ($TownHalls as $Item) {
               extract($Item);
               $Lenguages = ModelsBD::getFilter("SELECT lpm.idlengua, L.nombre, SUM(lpm.nhablantes) as total 
                                                FROM municipios M, lengua_por_municipio lpm, lenguas L
                                                WHERE M.id = lpm.idmunicipio AND lpm.idlengua = L.id  and M.id = $id
                                                GROUP BY M.id, lpm.idlengua
                                                ORDER BY total DESC");
               $result[] = array(
                  "Id"  => $id,
                  // "Municipio"  => $nombre,
                  "title"  => $nombre,
                  "Lat_"  => $Lat_,
                  "Long_"  => $Long_,
                  "Lenguas"  => $Lenguages,
               );
            }
         }
         $return = new response();
         $return->setResponse($result, null, null);
      }
      static public function getByRegions(){
         $result = array();
         $Regions = ModelsBD::SelectFrom("SELECT R.id, R.nombre, R.latitud AS Lat_, R.longitud AS Long_ FROM `regiones` R WHERE  estatus = 1");
         if(!empty($Regions)){
            foreach ($Regions as $Item) {
               extract($Item);
               $Lenguages = ModelsBD::getFilter("SELECT lpm.idlengua, L.nombre, SUM(lpm.nhablantes) as total 
                                                FROM municipios M, lengua_por_municipio lpm, lenguas L, `regiones` R 
                                                WHERE M.id = lpm.idmunicipio AND lpm.idlengua = L.id AND  M.region = R.id and M.region = $id
                                                GROUP BY M.region, lpm.idlengua
                                                ORDER BY total DESC");
               $result[] = array(
                  "Id"  => $id,
                  "title"  => $nombre,
                  "Lat_"  => $Lat_,
                  "Long_"  => $Long_,
                  "Lenguas"  => $Lenguages,
               );
            }
         }
         $return = new response();
         $return->setResponse($result, null, null);
      }
      static public function getByLenguage($ID){
         // $Items_BD = ModelsBD::SelectFrom("SELECT M.id as Id, M.nombre, L.nombre as Lengua, M.latitud AS Lat_, M.longitud AS Long_ , LM.nhablantes 
         //                                  FROM `municipios` M, lengua_por_municipio LM, lenguas L
         //                                  WHERE LM.idmunicipio = M.id and LM.idlengua = L.id and LM.idlengua = $ID 
         //                                  ORDER BY M.nombre ASC");
         $Items_BD = ModelsBD::SelectFrom("SELECT M.id as Id, M.nombre as title, L.nombre as Lengua, M.latitud AS Lat_, M.longitud AS Long_ , LM.nhablantes 
                                          FROM `municipios` M, lengua_por_municipio LM, lenguas L
                                          WHERE LM.idmunicipio = M.id and LM.idlengua = L.id and LM.idlengua = $ID 
                                          ORDER BY M.nombre ASC");
         $return = new response();
         $return->setResponse($Items_BD, null, null);
      }
  }
?>