<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class Requisition {
    public static function getRequisitionById($id) {
        $sql = "SELECT REQUISITION.REQUISITION_ID, REQUISITION.MEMBER_ID, 
                       REQUISITION.REQUISITION_DELIVERY_ADDRESS_ID, 
                       REQUISITION.REQUISITION_BILLING_ADDRESS_ID, 
                       REQUISITION.REQUISITION_STATUS_ID, 
                       REQUISITION.REQUISITION_NOTES 
                FROM REQUISITION 
                WHERE REQUISITION.ISACTIVE = 1 
                AND REQUISITION.REQUISITION_ID = :id";
        
        try {
            $conn = new PDO(DB_DSN, DB_USERNAME, DB_PASSWORD);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $stmt = $conn->prepare($sql);
            $stmt->bindValue("id", $id, PDO::PARAM_INT);
            $stmt->execute();
            
            return $stmt->fetchAll();
        } catch (Exception $ex) {
            error_log($ex->getMessage());
        }       
    }
}
