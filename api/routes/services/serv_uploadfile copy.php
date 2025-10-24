<?php

   $type = isset($_GET['type']) ? $_GET['type'] : '';
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
       case 'POST':
           $Path = realpath('../multimedia/img/users');
           if ($Path === false) {
               die("Ruta del directorio no válida.");
           }
           $Extensions = array('png', 'jpg', 'jpeg', 'bmp', 'tif', 'psd');
           $Result = UploadFile($Path, $Extensions, $FileName, $FileExt, $Source);
           break;
       default:
           $Return = ALERT(405, 'Method Not Allowed');
   }
   
   die();



function UploadFile($Path, $Extensions, $Name, $File_Ext, $Source_) {
    $result = array();
    // Verificar extensión del archivo
    if (in_array($File_Ext, $Extensions)) {
        // Crear directorio si no existe
        if (!file_exists($Path)) {	
            if (!mkdir($Path, 0777, true)) { // main 0777  0755  0750
                $result['message'] = "No se puede crear el directorio de extracción";
                $result['status'] = 200;
                return json_encode($result);
            }
        }
        $target_path = $Path . '/' . $Name;
        // Mover el archivo
        if (move_uploaded_file($Source_, $target_path)) {
            $result['message'] = 'Archivo guardado correctamente';
            $result['status'] = 200;
            $result['fileName'] = $Name;
        } else {
            $result['message'] = "Ha ocurrido un error al mover el archivo.";
            $result['status'] = 400;
        }
    } else {
        $result['message'] = "Tipo de archivo no permitido.";
        $result['status'] = 400;
    }

    echo json_encode($result, http_response_code($result['status']));
}


?>