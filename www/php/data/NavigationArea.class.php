<?php 
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
namespace x726xTECHx\xPHPx\xDATAx;

class NavigationArea {
    public static function getAllNavigationAreas() {
        $sql = "SELECT NAVIGATION_AREA_ID, NAVIGATION_AREA_PARENT_ID, 
                       NAVIGATION_AREA_KWD, NAVIGATION_AREA_TITLE, 
                       NAVIGATION_AREA_CANONICAL, NAVIGATION_AREA_IMGURL,
                       NAVIGATION_AREA_DESCRIPTION
                FROM NAVIGATION_AREA 
                WHERE ISACTIVE = 1 
                ORDER BY NAVIGATION_AREA_PRIORITY ASC";
        
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
}