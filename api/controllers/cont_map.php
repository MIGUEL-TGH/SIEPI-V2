<?php

   require_once "models/ModelsBD.php";
   require_once "Response.php";
   class fuentes_info{
      public function __construct(){}
      //--------------------public access-------------------------------------------        
      static public function getIndicators(){
         // $return = new response();
         // $result = array();
         // $Items_BD = ModelsBD::getFilter("SELECT m.`id`, m.`description` AS `title`, m.`uri`, m.`icon`, m.`color`, m.`team` 
         //                                  FROM `modules` m 
         //                                  WHERE m.`map` = 1 AND m.`status` = 1 
         //                                  ORDER BY m.`description` ASC;");
         // if(!empty($Items_BD)){
         //    foreach ($Items_BD as $item) {
         //       $newItem = [
         //          'id' => $item['id'],
         //          'title' => $item['title'],
         //          'items' => [],
         //          'uri' => $item['uri'],
         //          'icon' => $item['icon'],
         //          'color' => $item['color'],
         //          'team' => $item['team']
         //       ];
         
         //       if ($item['team'] == 1) {
         //          $subModules = ModelsBD::getFilter("SELECT `id`, `description` AS `title`, `color` FROM `sub_modules` 
         //                                              WHERE id_mod = {$item['id']} and `status` = 1;");
         //          // $newItem['sub_modules'] = $subModules;
         //          foreach ($subModules as $subM) {
         //             $newItem['sub_modules'][] = [
         //                'id' => $subM['id'],
         //                'title' => $subM['title'],
         //                'color' => $subM['color'],
         //                'items' => [],
         //                'uri' => $item['uri'],
         //             ];
         //          }
         //       }
              
         //       $result[] = $newItem;
         //    }
         //    return $return->setResponse($result, null, null);
         //    // return $return->setResponse($Items_BD, null, null);
         // }else{
         //    return $return->setResponse(null, '¡items not found!', 400);
         // }

         $return = new response();
         $result = array();

         $query = "SELECT m.`id`, m.`description` AS `title`, m.`uri`, m.`icon`, m.`color`, m.`team` 
                  FROM `modules` m 
                  WHERE m.`map` = 1 AND m.`status` = 1 
                  ORDER BY m.`description` ASC;";
         $Items_BD = ModelsBD::getFilter($query);
         // WHERE m.`map` = 1 AND m.`status` = 1 
         if (empty($Items_BD)) {
            return $return->setResponse(null, '¡items not found!', 400);
         }
         
         $moduleIds = array_column($Items_BD, 'id'); // Prepara una lista de ids de módulos para la consulta de submódulos
         $moduleIdsList = implode(',', $moduleIds); // Realiza una consulta para obtener todos los submódulos de una vez
         $subModulesQuery = "SELECT `id`, `id_mod`, `description` AS `title`, `icon`, `color`, search, id_search
                              FROM `sub_modules` 
                              WHERE `id_mod` IN ($moduleIdsList) AND `status` = 1;";
         $subModules_BD = ModelsBD::getFilter($subModulesQuery);

         $subModulesById = [];
         foreach ($subModules_BD as $subM) {
            $subModulesById[$subM['id_mod']][] = [
               'id' => $subM['id'],
               'title' => $subM['title'],
               'color' => $subM['color'],
               'icon' => $subM['icon'],
               'search' => $subM['search'],
               'id_search' => $subM['id_search'],
               // 'items' => [],
               'uri' => '', // Puedes configurar esto si es necesario
            ];
         }

         foreach ($Items_BD as $item) {
            $newItem = [
               'id' => $item['id'],
               'title' => $item['title'],
               'items' => [],
               'uri' => $item['uri'],
               'icon' => $item['icon'],
               'color' => $item['color'],
               'team' => $item['team'],
            ];

            // if ($item['team'] == 1 && isset($subModulesById[$item['id']])) {
            //       $newItem['sub_modules'] = $subModulesById[$item['id']];
            // }

            if ($item['team'] == 1 && isset($subModulesById[$item['id']])) {
               foreach ($subModulesById[$item['id']] as &$subM) {
                   $subM['uri'] = $item['uri'];
               }
               $newItem['sub_modules'] = $subModulesById[$item['id']];
           }

            $result[] = $newItem;
         }

         return $return->setResponse($result, null, null);

      }
      //--------------------private access------------------------------------------- 
  }

?>