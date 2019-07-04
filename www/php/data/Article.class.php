<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class Article {
    public static function getArticleById($id) {
        $sql = "SELECT ARTICLE.ARTICLE_ID, ARTICLE.ARTICLE_PARENT_ID, 
                       ARTICLE.ARTICLE_TYPE_ID, ARTICLE.ARTICLE_AUTHOR_ID,
                       ARTICLE.ARTICLE_CANONICAL, ARTICLE.ARTICLE_PUBLISHED,
                       ARTICLE.ARTICLE_TITLE, ARTICLE.ARTICLE_DESCRIPTION, 
                       ARTICLE.ARTICLE_IMGURL, ARTICLE.ARTICLE_IMGALT,
                       ARTICLE.ARTICLE_TEXT, ARTICLE.ARTICLE_FILENAME 
                FROM ARTICLE 
                WHERE ARTICLE.ISACTIVE = 1 
                AND ARTICLE.ARTICLE_ID = :id";
        
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
}
