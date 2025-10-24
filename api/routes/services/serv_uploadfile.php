<?php
   require_once "controllers/cont_uploadfile.php";

   $type = isset($_GET['type']) ? $_GET['type'] : '';
   $path = isset($_GET['path']) ? $_GET['path'] : '';
   $url = isset($_GET['url']) ? $_GET['url'] : '';
   $file = (isset($_FILES['Upload_file'])) ? true : false;

   $FileExt = "";
   $Source = "";

   if ($file) {
      $FileName = $_FILES['Upload_file']['name'];
      $FileNameCmps = explode(".", $FileName);
      $FileExt = strtolower(end($FileNameCmps));
      $Source = $_FILES["Upload_file"]["tmp_name"];
   }

   switch ($METHOD) {
      case 'GET': 
         if($type == "deleteFile"){
            if (empty($url)) {
               $Return = ALERT(400, 'parameter not found');
            }
            $Return = uploadfile::setDelete($url);
         } else {
            $Return = ALERT(400, 'undefined parameter');
         }
      break;
      case 'POST':
         $Path_ = realpath($path);
         if ($Path_ === false) {
            die("Ruta del directorio no válida.");
         }
         
         if($type == 'sendFile'){
            $Extensions = array('png', 'jpg', 'jpeg', 'bmp', 'tif', 'psd');
            $Return = uploadfile::setupload($Path_, $Extensions, $FileName, $FileExt, $Source);
         }else{
            $Return = ALERT(400, 'undefined parameter');
         }
         break;
      default:
         $Return = ALERT(405, 'Method Not Allowed');
   }

?>