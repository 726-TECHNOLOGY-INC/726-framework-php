<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class Product {
    private $sql = "SELECT PRODUCT.PRODUCT_ID, PRODUCT.PRODUCT_KWD, PRODUCT.PRODUCT_NAME, 
                           PRODUCT.PRODUCT_IMGURL, PRODUCT.PRODUCT_DESCRIPTION, 
                           PRODUCT.PRODUCT_STATUS_ID
                           FROM PRODUCT 
                           WHERE PRODUCT.ISACTIVE = 1 
                           AND PRODUCT.PRODUCT_ID = :id";
    
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
