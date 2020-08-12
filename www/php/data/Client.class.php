<?php 
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2020            ALL RIGHTS RESERVED *
*******************************************************************************/
namespace x726xTECHx\xPHPx\xDATAx;
use PDO;

class Client {
    private static $fields = "CLIENT.CLIENT_ID, 
                              CLIENT.CLIENT_FACEBOOKNAME, 
                              CLIENT.CLIENT_FIRSTNAME, CLIENT.CLIENT_LASTNAME, 
                              CLIENT.CLIENT_NOTES ";
    
    public static function GetActiveClients() {
        $sql = "SELECT " . self::$fields . "
                FROM CLIENT 
                WHERE CLIENT.ISACTIVE = 1 ";
        
        try {
            $conn = new PDO(DB_DSN, DB_USERNAME, DB_PASSWORD);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            
            return $stmt->fetchAll();
        } catch (Exception $ex) {
            error_log($ex->getMessage());
        }       
    }

    public static function GetClientById($id) {
        $sql = "SELECT " . self::$fields . "
                FROM CLIENT 
                WHERE CLIENT.ISACTIVE = 1 
                AND CLIENT.CLIENT_ID = :id";
        
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
    
    public static function GetClientByEmail($email) {
        $sql = "SELECT " . self::$fields . "
                FROM CLIENT 
                WHERE CLIENT.ISACTIVE = 1 
                AND CLIENT.CLIENT_EMAIL = :email";

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

