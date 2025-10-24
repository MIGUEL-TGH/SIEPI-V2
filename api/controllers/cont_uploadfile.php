<?php
   // require_once "models/ModelsBD.php";

use LDAP\Result;

   require_once "Response.php";
   class uploadfile{
      public function __construct(){}
     
      static public function setupload($Path, $Extensions, $Name, $File_Ext, $Source_){
         try{
            $return = new response();
            // define('BASE_PATH', './../');
            $resul = array();
            if (in_array($File_Ext, $Extensions)){
               if(!file_exists($Path)){
                  mkdir($Path, 0777) or die("No se puede crear el directorio de extracción");	
               }      
               $dir=opendir($Path);
               $target_path = $Path.'/'.$Name; 
         
               if(move_uploaded_file($Source_, $target_path)) {	
                  $resul['message'] = 'Archivo guardado correctamente';
                  // $resul['src'] = $target_path;
                  $resul['fileName'] = $Name;
               } else {	
                  $resul['message'] = "Ha ocurrido un error, por favor inténtelo de nuevo";
               }
               closedir($dir);
            } 
            return $return->setResponse($resul, null, null);  
         } catch(PDOException $e){  
            return $return->setResponse(null, 'error occurred.', 500);
         }
      }

      static public function setDelete($url){
         $return = new response();
         
         if(is_file($url)){
            if(unlink($url)){
               $result = array(
                  'message' => 'Archivo guardado correctamente'
               );
               return $return->setResponse($result, null, 200);

            }else{
               return $return->setResponse(null, 'error deleting file', 404);
            }
         } else {
            return $return->setResponse(null, 'file not found', 404);
         }
      }
  }
?>