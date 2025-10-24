<?php
  // require_once "controllers/get-controller.php";

  // $response = GetController::getData($REQ_URI);
  // print_r($response);


  require_once "controllers/Regiones.php";

  $response = regiones::getAllData($REQ_URI);
  print_r($response);



  // $reult = array(
  //   'status' => 200,
  //   'result' => 'success',
  // );

  // echo json_encode($reult, http_response_code($reult['status']));
 
?>