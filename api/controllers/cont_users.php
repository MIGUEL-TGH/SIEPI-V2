<?php
use LDAP\Result;

   require_once "models/ModelsBD.php";
   require_once "Response.php";
   class users{
      private static $crypt = '$2a$07$sdFqwdAQDGSGFsdfw236r88sdvDfsd5c1asd6F7sd8wTer9987$';  //CRYPT_BLOWFISH
      private static $regex = array(
         'name' => '/^[\w\s.,áéíóúÁÉÍÓÚñÑüÜ]{1,100}$/',  
         'email' => '/^[\w\-\.]+@([\w\-]+\.)+[\w\-]{2,4}$/'
      );

      public function __construct(){}

      static private function isEmpty($array, $key) {
         return !isset($array[$key]) || !strlen($array[$key]);
      }
      static private function getUserPhoto($img_user) {
         $wildcardPhoto = 'multimedia/img/users/sinfotos.png';
         $valPhoto = './../' . $img_user;
     
         if (!is_null($img_user) && file_exists($valPhoto)) {
             return $img_user;
         }
         return $wildcardPhoto;
      }
      static public function setLogin($item){
         $return = new response();
         if (!self::isEmpty($item, 'token')) {
            return $return->setResponse(null, 'inicio de sesión incorrecto!', 400); // ¡incorrect login!
         }

         if (self::isEmpty($item, 'password') || self::isEmpty($item, 'email')) {
            return $return->setResponse(null, '¡usuario y contraseña son obligatorios!', 400); // ¡email y password son obligatorios!
         }

         $FindUser = ModelsBD::getDataFind('users', 'email', $item['email']);
         if($FindUser == null){  
            return $return->setResponse(null, '¡El usuario o contraseña es incorrecta, favor de verificar sus datos!', 400); // ¡wrong email!
         }

         if($FindUser->{"status"} == 0){ 
            return $return->setResponse(null, '¡usuario inhabilitado, póngase en contacto con el soporte técnico!', 400); // ¡disabled user, please contact technical support!
         }

         if (!password_verify($item['password'], $FindUser->password)) {
            return $return->setResponse(null, '¡El usuario o contraseña es incorrecta, favor de verificar sus datos!', 400); // wrong password!
         }

         unset($FindUser->password);
         $Photo = self::getUserPhoto($FindUser->img);
         
         $dataToken = array(
            'type' => 'new',
            'id' => $FindUser->{"id"},
            'name' => $FindUser->{"name"},
            'img' => $Photo,
            'pass' => $FindUser->{"update_pass"}
         );
         $token = ModelsBD::setJWT( $dataToken );
         date_default_timezone_set('America/Mexico_City');
         $Date = date("Y-m-d");
         $params = $token;
         $params['id_user'] = $FindUser->{"id"};
         $params['date_created'] = $Date;
         $params['time_created'] = (isset($item['time'])) ? $item['time'] : null;
         $params['status'] = 1;

         $newInsert = ModelsBD::setInsert('login', $params);
         $result = $token;

         if(isset($token["token_exp"])){
            unset($token["token_exp"]);
         }

         $result['page'] = 'dashboard.html';

         if(isset($newInsert["comment"]) && $newInsert["comment"] == "The process was successful"){
            $return->setResponse($result, null, null);
         }else{
            $return->setResponse(null, '¡incorrect login!', 400);
         }
      }
      static public function setLogout($item){
         $return = new response();

         if( isset($item['token']) || strlen($item['token']) ){

            $valToken =  ModelsBD::setvalToken($item);
            if($valToken['res'] == 'not-auth'){
               return $return->setResponse(null, $valToken['alert'], $valToken['status']);
            }

            $dataUpdate = array(
               'id' => $valToken['id_token'],
               'status' => 0,
            );
            $response = ModelsBD::setUpdate('login', $dataUpdate);

            if($item['type'] == 'front'){
               return $return->setResponse($response, '', 200);
            }else if($item['type'] == 'back'){
               return $response;
            }

         }else{
            $return->setResponse(null, '¡incorrect logout!', 400);
         }
      }
      static public function updateToken($item){
         $return = new response();
         if(isset($item['token']) || strlen($item['token'])){             
                  
            $findToken = ModelsBD::getDataFind('login', 'token', $item['token']);
            if($findToken == null){ // return null;   
               return $return->setResponse(null, '¡wrong token!', 400);
            }

            $currentToken = ModelsBD::parseJWT($item['token']);

            print_r($findToken);
            print_r($currentToken);
         }else{
            return $return->setResponse(null, '¡token is not set!', 400);
         }

      }

      //--------------------private access-------------------------------------------        
      static public function setValidateToken($item){
         $return = new response();
         $ValToken =  ModelsBD::setValToken($item);
         
         if($ValToken['res'] == 'not-auth'){
            return $return->setResponse(null, $ValToken['alert'], $ValToken['status']);
         }

         $dataUpdate = array(
            'id' => $ValToken['id_token'],
            'status' => 0,
         );

         if($ValToken['res'] == 'expired'){
            ModelsBD::setUpdate('login', $dataUpdate);
            return $return->setResponse(null, $ValToken['alert'], $ValToken['status']);
         }         

         if($ValToken['status'] == 200){

            $FindUser = ModelsBD::getDataFind('users', 'id', $ValToken['id_user']);
            if(empty($FindUser)){
               ModelsBD::setUpdate('login', $dataUpdate);
               return $return->setResponse(null, 'the user is not found', 400);
            }

            if($FindUser->status == 0){      
               ModelsBD::setUpdate('login', $dataUpdate);
               return $return->setResponse(null, 'disabled user', 400);
            }

            $result['page'] = 'dashboard.html';
            $return->setResponse($result, null, null);
         }         
      }
      
      //------------------------------------------------------------------------------------------------------------------------------
      static public function getUsersToPermissions($data){ // 100%
         $return = new response();
         $ValToken =  ModelsBD::setValToken($data);
         if($ValToken['status'] != 200){
            return $return->setResponse(null, $ValToken['alert'], $ValToken['status']);
         }

         $Items_BD = ModelsBD::getFilter("SELECT `id`, `name` FROM `users` WHERE `status` = 1 ORDER BY `id`;");         
         $return->setResponse($Items_BD, null, null);
      }
      static public function getModules($item){ // 100% Modulos en donde el usuario tiene acceso
         $return = new response();
         $valToken =  ModelsBD::setValToken($item);
         if($valToken['status'] != 200){
            return $return->setResponse(null, $valToken['alert'], $valToken['status']);
         }
         
         $currentToken = ModelsBD::parseJWT($item['token']);
         $idUser = $currentToken["id"];

         $result = array(
            'generals' => [],
            'indicators' => []
         );

         $Modules = ModelsBD::getFilter("SELECT * FROM `modules` WHERE `status` = 1 ORDER BY `place` ASC;");
         if(!empty($Modules)){
            foreach ($Modules as $item) {
               if($item['map'] == 1){
                  if ($item['team'] == 0){

                     $permission = ModelsBD::getFind("SELECT * FROM `user_permissions` WHERE `id_user` = $idUser AND `id_mod` = {$item['id']} AND `type` = 'module' AND `status` = 1 ");
                     if($permission != null){
                        $result['indicators'][] = [
                           'id' => $item['id'],
                           'description' => $item['description'],
                           'component' => $item['component'],
                           'icon' => $item['icon'],
                           'team' => $item['team'],
                           'place' => $item['place'],
                        ];
                     }

                  }else if($item['team'] == 1){
                     $teamModule =  [
                        'id' => $item['id'],
                        'description' => $item['description'],
                        'component' => $item['component'],
                        'icon' => $item['icon'],
                        'team' => $item['team'],
                        'place' => $item['place'],
                     ];

                     $subModules = ModelsBD::getFilter("SELECT `id`, `description`, `component` FROM `sub_modules` 
                                                      WHERE id_mod = {$item['id']} and `status` = 1;");
                     $newItem = array();
                     foreach ($subModules as $sub) {
                        $permission = ModelsBD::getFind("SELECT * FROM `user_permissions` WHERE `id_user` = $idUser AND `id_mod` = {$sub['id']} AND `type` = 'sub_module' AND `status` = 1 ");
                        if($permission != null){
                           $newItem[] = $sub; 
                        }
                     }

                     if (!empty($newItem)) {
                        $teamModule['sub_modules'] = $newItem;
                        $result['indicators'][] = $teamModule;                     
                     }
                  }
               }else{
                  if ($item['team'] == 0){
                     $permission = ModelsBD::getFind("SELECT * FROM `user_permissions` WHERE `id_user` = $idUser AND `id_mod` = {$item['id']} AND `type` = 'module' AND `status` = 1 ");
                     if($permission != null){
                        $result['generals'][] = [
                           'id' => $item['id'],
                           'description' => $item['description'],
                           'component' => $item['component'],
                           'icon' => $item['icon'],
                           'team' => $item['team'],
                           'place' => $item['place'],
                        ];
                     }
                  }else if($item['team'] == 1){
                     $teamModule =  [
                        'id' => $item['id'],
                        'description' => $item['description'],
                        'component' => $item['component'],
                        'icon' => $item['icon'],
                        'team' => $item['team'],
                        'place' => $item['place'],
                     ];

                     $subModules = ModelsBD::getFilter("SELECT `id`, `description`, `component` FROM `sub_modules` 
                                                      WHERE id_mod = {$item['id']} and `status` = 1;");
                     $newItem = array();
                     foreach ($subModules as $sub) {
                        $permission = ModelsBD::getFind("SELECT * FROM `user_permissions` WHERE `id_user` = $idUser AND `id_mod` = {$sub['id']} AND `type` = 'sub_module' AND `status` = 1 ");
                        if($permission != null){
                           $newItem[] = $sub; 
                        }
                     }

                     if (!empty($newItem)) {
                        $teamModule['sub_modules'] = $newItem;
                        $result['generals'][] = $teamModule;                     
                     }
                  }
               }

            }
            return $return->setResponse($result, null, null);
         }else{
            return $return->setResponse($result, null, null);
         }
      }
      static public function getAllModules($item){ // 100%
         $return = new response();

         $valToken =  ModelsBD::setValToken($item);
         if($valToken['status'] != 200){
            return $return->setResponse(null, $valToken['alert'], $valToken['status']);
         }
         $result = array(
            'generals' => [],
            'indicators' => []
         );

         $Items_BD = ModelsBD::getFilter("SELECT * FROM `modules` WHERE `status` = 1 ORDER BY `place` ASC;");
         if(!empty($Items_BD)){
            foreach ($Items_BD as $item) {
               if($item['map'] == 1){
                  if ($item['team'] == 0) {
                     $result['indicators'][] = [
                        'id' => $item['id'],
                        'module' => 'Indicadores',
                        'sub_module' => $item['description'],
                        'status' => false,
                        'type' => 'module'
                     ];
                  }else if($item['team'] == 1){
                     $subModules = ModelsBD::getFilter("SELECT `id`, `description` FROM `sub_modules` 
                     WHERE id_mod = {$item['id']} and `status` = 1;");
                     $newItem = array();
                     foreach ($subModules as $sub) {
                        $newItem [] = array(
                           'id' => $sub['id'],
                           'module' => $item['description'],
                           'sub_module' => $sub['description'],
                           'status' => false,
                           'type' => 'sub_module'
                        );
                     }
                     $result['indicators'] = array_merge($result['indicators'], $newItem); 
                  }
               }else{
                  if ($item['team'] == 0) {
                     $result['generals'][] = [
                           'id' => $item['id'],
                           'module' => $item['description'],
                           'sub_module' => $item['description'],
                           'status' => false,
                           'type' => 'module'
                     ];
                  }else if($item['team'] == 1){
                     $subModules = ModelsBD::getFilter("SELECT `id`, `description` FROM `sub_modules` 
                                                      WHERE id_mod = {$item['id']} and `status` = 1;");
                     $newItem = array();
                     foreach ($subModules as $sub) {
                        $newItem [] = array(
                           'id' => $sub['id'],
                           'module' => $item['description'],
                           'sub_module' => $sub['description'],
                           'status' => false,
                           'type' => 'sub_module'
                        );
                     }
                     $result['generals'] = array_merge($result['generals'], $newItem);
                  }
               }
            }
            return $return->setResponse(array_merge($result['generals'], $result['indicators']), null, null);
         }else{
            return $return->setResponse($result, null, null);
         }
      }
      static public function getUserPermissions($item){
         $return = new response();

         $valToken =  ModelsBD::setValToken($item);
         if($valToken['status'] != 200){
            return $return->setResponse(null, $valToken['alert'], $valToken['status']);
         }

         $result = array();
         $query = ModelsBD::getFilter("SELECT * FROM `user_permissions` WHERE `id_user` = {$item['id']} AND `status` = 1");
         if(!empty($query)){
            foreach ($query as $row) {
               if($row['type'] == 'module'){
                  $permission = ModelsBD::getFind("SELECT * FROM `modules` WHERE `id` = {$row['id_mod']} AND `status` = 1");
                  if($permission != null){
                     $result[] = [
                        'id' => $permission['id'],
                        'status' => true,
                        'type' => 'module'
                     ];
                  }
               }else if($row['type'] == 'sub_module'){
                  $permission = ModelsBD::getFind("SELECT * FROM `sub_modules` WHERE `id` = {$row['id_mod']} AND `status` = 1");
                  if($permission != null){
                     $result[] = [
                        'id' => $permission['id'],
                        'status' => true,
                        'type' => 'sub_module'
                     ];
                  }

               }
            }
            return $return->setResponse($result, null, null);
         }else{
            return $return->setResponse(400, null, null);
            // return $return->setResponse($result, null, null);
         }  
      }
      static public function crud_permissions($item){
         try{            
            $return = new response();
            $valToken =  ModelsBD::setValToken(array('token' =>$item['token']));
            if($valToken['status'] != 200){
               return $return->setResponse(null, $valToken['alert'], $valToken['status']);
            }

            if (self::isEmpty($item, 'id')) {
               return $return->setResponse(null, '¡es necesario el ID del usuario para resetear la contraseña!', 400);
            }

            $colums_table = array(
               'id_user' => $item['id'],
               'status' => 1
            );
            $valColums =  ModelsBD::ifColumnsExist( 'user_permissions', $colums_table);
            if($valColums['status'] != 200){
               return $return->setResponse(null, $valColums['alert'], $valColums['status']);
            }
            
            $update_permissions = ModelsBD::crud("UPDATE `user_permissions` SET status = 0 WHERE `id_users` = {$item['id']};"); 
            $user_permissions = ModelsBD::getFilter("SELECT * FROM `user_permissions` WHERE `id_user` = {$item['id']}");         
            
            $params = $item['params'];
            foreach ($params as $e) {
               $id = $e['id'];
               $type = $e['type'];
               $filtered = array_filter($user_permissions, function($element) use ($id, $type) {
                  return $element['id_mod'] === $id && $element['type'] === $type;
               });

               if(!empty($filtered)){
                  $row = array_values($filtered)[0];
                  $data = array(
                     'id' => $row['id'],
                     'status' => 1
                  );
                  $response = ModelsBD::setUpdate('user_permissions', $data);
                  if ($response['status'] === 400){
                     return $return->setResponse(null, $response['alert'], $response['status']);
                  }

               }else{
                  $data = array(
                     'id_user' => $item['id'],
                     'id_mod' => $e['id'],
                     'type' => $e['type'],
                     'status' => 1
                  );
                  $response = ModelsBD::setInsert('user_permissions', $data);
                  if ($response['status'] === 400){
                     return $return->setResponse(null, $response['alert'], $response['status']);
                  }
                  
                  // print_r($response);
               }
            }

            return $return->setResponse('The process was successful', null, 200);
                     
         } catch(PDOException $e){  return null; }
      }
      //------------------------------------------------------------------------------------------------------------------------------
      static public function getDataAdmin($data){
         define('BASE_PATH', './../');
         $return = new response();
         $ValToken =  ModelsBD::setValToken($data);
         if($ValToken['status'] != 200){
            return $return->setResponse(null, $ValToken['alert'], $ValToken['status']);
         }

         $Items_BD = ModelsBD::getFilter("SELECT `id`, `name`, `email`, `img`, `status` FROM `users` ORDER BY `id`;");         
         $result = array();         
         foreach ($Items_BD as $item) {
            $wildcardPhoto = 'multimedia/img/users/sinfotos.png';
            $img_user = $item['img'];
            $valPhoto = BASE_PATH . $img_user;
            $Photo = "";
            if (!is_null($img_user) && file_exists($valPhoto)) {
               $Photo = $item['img'];
            }else{
               $Photo = $wildcardPhoto;
            }

            $result[] = array(
               'id' => $item['id'],
               'name' => $item['name'] ,
               'email' => $item['email'],
               'img' => $Photo,
               'status' => ($item['status'] == 0) ? false : true,
            );
         }
         $return->setResponse($result, null, null);
      }  
      static public function CRUD($item){
         $return = new response();

         $valToken =  ModelsBD::setValToken(
            array('token' =>$item['token'])
         );

         if($valToken['status'] != 200){
            return $return->setResponse(null, $valToken['alert'], $valToken['status']);
         }

         try{
            $params = array();
            switch ($item['task']) {
               case '1': // Insert new
                  if(!preg_match(self::$regex['name'], $item['params']['name'])){
                     return $return->setResponse(null, 'the value does not meet the required characteristics', 400);
                  }

                  if(!preg_match(self::$regex['email'], $item['params']['email'])){
                     return $return->setResponse(null, 'the value does not meet the required characteristics', 400);
                  }

                  // CRYPT_BLOWFISH
                  $generic_pass = 'IPPI_2020';
                  // $generic_pass = 'MTGH/2022';
                  $crypt_pass = crypt($generic_pass, self::$crypt);
                  $params = $item['params'];
                  $params['password'] = $crypt_pass;
                  $params['status'] = 1;
                  $params['update_pass'] = 0;
                  // return;
                  $response = ModelsBD::setInsert('users', $params);
                  if($response['status'] === 200){
                     $result["id"] = $response["id"];
                     $result["task"] = 'save_item';

                     return $return->setResponse($result, '', 200);

                  }else if ($response['status'] === 400){
                     return $return->setResponse(null, $response['alert'], $response['status']);
                  }
                  break;
               case '2': // Update status by user
                  if($item['params']['status'] == 1 || $item['params']['status'] == 0){
                     $params = $item['params'];
                     $response = ModelsBD::setUpdate('users', $params);

                     if($response['status'] === 200){
                        $result["id"] = $params['id'];
                        $result["status"] = $params['status'];
                        $result["task"] = 'update_status';
                        return $return->setResponse($result, '', 200);
                     }else if ($response['status'] === 400){
                        return $return->setResponse(null, $response['alert'], $response['status']);
                     }

                  }else{
                     return $return->setResponse(null, '', 400);
                  }

                  break;
               case '3': // register image by user
                  define('BASE_PATH', '../multimedia/img/users/');

                  $extID =  str_pad($item['params']['id'], 6, '0', STR_PAD_LEFT);
                  $fileName = $item['params']['fileName'];
                  $FileNameCmps = explode(".", $fileName);
                  $FileExt = strtolower(end($FileNameCmps));
                  $newName = $extID.'.'.$FileExt;
                  
                  if (rename( BASE_PATH.$fileName, BASE_PATH.$newName )) {
                     $src = 'multimedia/img/users/'.$newName;
                     $params = array(
                        'id' => $item['params']['id'],
                        'img' => $src
                     );
                                         
                     $response = ModelsBD::setUpdate('users', $params);

                     if($response['status'] === 200){
                        $result["id"] = $params['id'];
                        $result["task"] = 'save_img';
                        $result["fileName"] = $newName;
                        $result["src"] = $src;
                        return $return->setResponse($result, '', 200);
                     }else if ($response['status'] === 400){
                        return $return->setResponse(null, $response['alert'], $response['status']);
                     }

                  } else {
                     return $return->setResponse(null, 'error renaming file', 400);
                  }

                  break;
               case '4': // delete img by user
                     $params = $item['params'];
                     $response = ModelsBD::setUpdate('users', $params);

                     if($response['status'] === 200){
                        $result["id"] = $params['id'];
                        $result["task"] = 'delete_img';
                        return $return->setResponse($result, '', 200);
                     }else if ($response['status'] === 400){
                        return $return->setResponse(null, $response['alert'], $response['status']);
                     }
                     break;
               case '5': // update password by user
                  
                  $currentToken = ModelsBD::parseJWT($item['token']);
                  $idUser = $currentToken["id"];
                  
                  $FindUser = ModelsBD::getDataFind('users', 'id', $idUser);
                  if($FindUser == null){
                     return $return->setResponse(null, '¡usuario no encontrado!', 400);  // ¡wrong user!
                  }

                  $params = $item['params'];
                  $currentPassword = crypt($params['currentPassword'], self::$crypt);
                  
                  if($FindUser->{"password"} != $currentPassword){ 
                     return $return->setResponse(null, '¡contraseña actual incorrecta!', 400); // ¡wrong password!
                  }

                  if($params['currentPassword'] == $params['newPassword']){ 
                     return $return->setResponse(null, '¡La nueva contraseña no puede ser la misma que la actual!', 400);  // ¡The new password cannot be the same as the current one!
                  }

                  $dataUpdate = array(
                     'id' => $idUser,
                     'password' => crypt($params['newPassword'], self::$crypt),
                     'update_pass' => 1,
                  );
                  $response = ModelsBD::setUpdate('users', $dataUpdate);
                  if($response['status'] === 200){
                     if(isset($response["status"])){
                        unset($response["status"]);
                     }

                     $result = array();
                     $result['message'] = $response;
                     $result['page'] = './login.html';
                     $result['type'] = 'session';

                     $session = self::setLogout(array('token' => $item['token'], 'type' => 'back'));
                     $result['session'] = ($session['status'] == 200) ? 1 : 0;
                     return $return->setResponse($result, '', 200);

                     // return $return->setResponse($response, '', 200);
                  }else if ($response['status'] === 400){
                     return $return->setResponse(null, $response['alert'], $response['status']);
                  }
                  break;
               case '6': // reset password
                 
                  if (!self::isEmpty($item, 'id')) {
                     return $return->setResponse(null, '¡es necesario el ID del usuario para resetear la contraseña!', 400);
                  }

                  // CRYPT_BLOWFISH
                  $generic_pass = 'IPPI_2020';
                  $crypt_pass = crypt($generic_pass, self::$crypt);
                  $params = $item['params'];
                  $params['id'] = $params['id'];
                  $params['password'] = $crypt_pass;
                  $params['update_pass'] = 0;
                  
                  $response = ModelsBD::setUpdate('users', $params);
                  if($response['status'] === 200){
                     $result["id"] = $params['id'];
                     $result["task"] = 'password_reset';
                     return $return->setResponse($result, '', 200);
                  }else if ($response['status'] === 400){
                     return $return->setResponse(null, $response['alert'], $response['status']);
                  }
                     
                  break;
               default:
                  $return->setResponse(null, 'Task Not Found', 400);
                  return;
            }
            
         } catch(PDOException $e){  return null; }
      }
      //------------------------------------------------------------------------------------------------------------------------------
  }
?>