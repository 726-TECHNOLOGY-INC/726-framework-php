<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2020            ALL RIGHTS RESERVED *
*******************************************************************************/
namespace x726xTECHx\xPHPx;

class PageConfig {
    public static $title = "";
    public static $description = "";
    public static $link = "";
    public static $parentLink = "";
    public static $css = array(
        SITE_CANONICAL . "css/726-framework.css"
    );    
    public static $js = array (
        SITE_CANONICAL . "js/726-framework.js"
    );
    public static $ogImage = SITE_OG_IMG;
    public static $ogImageAlt = SITE_NAME;
    public static $requireSnippet = false;
    public static $redirect = false;
        
    public static function getFullTitle() {
        return self::$title . " | " . SITE_NAME;
    }
    
    public static function getMetaProperties() {
        return "<meta property=\"og:title\" content=\"" . self::getFullTitle() . "\" />
        <meta property=\"og:type\" content=\"website\" />
        <meta property=\"og:image\" content=\"" . self::$ogImage . "\" />
        <meta property=\"og:image:alt\" content=\"" . self::$ogImageAlt . "\" />
        <meta property=\"og:url\" content=\"" . SITE_CANONICAL . self::$link . "\" />
        <meta property=\"og:description\" content=\"" . self::$description . "\" />\n";
    }
}
