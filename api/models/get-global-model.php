<?php
  require_once "ConnectionBD.php";
  // require_once "ModelsBD.php";
  class GetModel{
    // private $sql = "";
    static public function getData($table){
      // $sql = "";
      // if($id != 0){ $sql = "SELECT * FROM $table WHERE id = $id";}
      // else{ $sql = "SELECT * FROM $table";}

      // return ModelsBD::SelectFrom($sql);
      
      $sql = "SELECT * FROM $table";
      $stmt = ConnectionBD::CNN()->prepare($sql);
      $stmt->execute();
      return $stmt->fetchAll(PDO::FETCH_CLASS);
     

    }

  }
?>