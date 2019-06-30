<?php 
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class Page {
    public $sql = "SELECT PAGE.PAGE_ID, PAGE.PAGE_PARENT_ID, PAGE.PAGE_TYPE_ID, 
                          PAGE.PAGE_CANONICAL, PAGE.PAGE_TITLE, PAGE.PAGE_DESCRIPTION,
                          PAGE.PAGE_IMGURL, PAGE.PAGE_PRIORITY
                          FROM PAGE 
                          WHERE PAGE.PAGE_ISACTIVE = 1 AND PAGE.PAGE_ID = :id";
    
    public $object;
    
    public function __construct($id) {
        try {
            $conn = new PDO(DB_DSN, DB_USERNAME, DB_PASSWORD);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $stmt = $conn->prepare($this->sql);
            $stmt->bindValue("id", $id, PDO::PARAM_INT);
            $stmt->execute();
            $this->object = $stmt->fetch();
        } catch (Exception $ex) {
            error_log($ex->getMessage());
        }         
    }
}
