<?php 
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class Member {
    private $sql = "SELECT MEMBER.MEMBER_USERNAME, 
                           MEMBER.MEMBER_FIRSTNAME, MEMBER.MEMBER_LASTNAME, 
                           MEMBER.MEMBER_ORGANIZATION, MEMBER.MEMBER_WEBURL, 
                           MEMBER.MEMBER_EMAIL, MEMBER.MEMBER_PHONE, 
                           MEMBER.MEMBER_ADDRESS_ID, MEMBER.MEMBER_ISREGISTERED 
                           FROM MEMBER 
                           WHERE MEMBER.ISACTIVE = 1 
                           AND MEMBER.MEMBER_ID = :id";
    
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
