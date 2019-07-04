<?php 
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class Address {    
    private $sql = "SELECT ADDRESS.ADDRESS_ID, 
                           ADDRESS.ADDRESS_NAME, ADDRESS.ADDRESS_STREET_1, 
                           ADDRESS.ADDRESS_STREET_2, ADDRESS.ADDRESS_CITY, 
                           ADDRESS.ADDRESS_STATE_ID, ADDRESS.ADDRESS_POSTAL 
                           FROM ADDRESS 
                           WHERE ADDRESS.ISACTIVE = 1 
                           AND ADDRESS.ADDRESS_ID = :id";
    
    public $data;
    
    public function __construct($id) {  
        try {
            $conn = new PDO(DB_DSN, DB_USERNAME, DB_PASSWORD);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $stmt = $conn->prepare($this->sql);
            $stmt->bindValue("id", $id, PDO::PARAM_INT);
            $stmt->execute();
            $this->data = $stmt->fetch();
        } catch (Exception $ex) {
            error_log($ex->getMessage());
        }        
    }
}
