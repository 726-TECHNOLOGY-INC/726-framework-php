<?php 
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class NavigationArea {
    private $sql = "SELECT NAVIGATION_AREA_ID, NAVIGATION_AREA_PARENT_ID, 
                           NAVIGATION_AREA_KWD, NAVIGATION_AREA_TITLE, 
                           NAVIGATION_AREA_CANONICAL, NAVIGATION_AREA_IMGURL,
                           NAVIGATION_AREA_DESCRIPTION
                    FROM NAVIGATION_AREA 
                    WHERE ISACTIVE = 1 
                    ORDER BY NAVIGATION_AREA_PRIORITY ASC";

    public $data;
    
    public function __construct() {
        try {
            $conn = new PDO(DB_DSN, DB_USERNAME, DB_PASSWORD);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $stmt = $conn->prepare($this->sql);
            $stmt->execute();
            $this->data = $stmt->fetchAll();
        } catch (Exception $ex) {
            error_log($ex->getMessage());
        }
    }
}