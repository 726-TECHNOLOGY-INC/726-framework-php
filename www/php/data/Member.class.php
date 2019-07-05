<?php 
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
namespace x726xTECHx\xPHPx\xDATAx;

class Member {
    private $fields = "MEMBER.MEMBER_USERNAME, 
                       MEMBER.MEMBER_FIRSTNAME, MEMBER.MEMBER_LASTNAME, 
                       MEMBER.MEMBER_ORGANIZATION, MEMBER.MEMBER_WEBURL, 
                       MEMBER.MEMBER_EMAIL, MEMBER.MEMBER_PHONE, 
                       MEMBER.MEMBER_ADDRESS_ID, MEMBER.MEMBER_ISREGISTERED ";
    
    public static function getMemberById($id) {
        $sql = "SELECT " . $this->fields . "
                FROM MEMBER 
                WHERE MEMBER.ISACTIVE = 1 
                AND MEMBER.MEMBER_ID = :id";
        
        try {
            $conn = new PDO(DB_DSN, DB_USERNAME, DB_PASSWORD);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $stmt = $conn->prepare($sql);
            $stmt->bindValue("id", $id, PDO::PARAM_INT);
            $stmt->execute();
            
            return $stmt->fetch();
        } catch (Exception $ex) {
            error_log($ex->getMessage());
        }       
    }
    
    public static function getMemberByEmail($email) {
        $sql = "SELECT " . $this->fields . "
                FROM MEMBER 
                WHERE MEMBER.ISACTIVE = 1 
                AND MEMBER.MEMBER_EMAIL = :email";

        try {
            $conn = new PDO(DB_DSN, DB_USERNAME, DB_PASSWORD);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $stmt = $conn->prepare($sql);
            $stmt->bindValue("email", $email, PDO::PARAM_STR);
            $stmt->execute();
            
            return $stmt->fetch();
        } catch (Exception $ex) {
            error_log($ex->getMessage());
        }     
    }
}