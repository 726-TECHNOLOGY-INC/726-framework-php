<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class PageTitle {    
    const COLOR_TEXT = "#EFC62C";
    const COLOR_BORDER = "#3F3F3F";
    const FONT_FAMILY = "CourierEx";
    const PAGE_TITLE_CSS = "
        <style>
            div .x726x-b-page-title {
                margin: 0 15px;
                border-bottom: 2px solid " . self::COLOR_BORDER . ";
                background: transparent;
                white-space: nowrap;
                width: 100%;
            }
            @media screen and (min-width: 840px) { div.x726x-b-page-title { width: 720px; } }

            div .x726x-b-page-title h2 {
                display: inline;
                padding-left: 1px;
                vertical-align: middle;
                text-shadow: 4px 4px 4px rgba(0,0,0,1); 
                color: " . self::COLOR_TEXT . "; 
                font-size: 20px; 
                letter-spacing: 2px; 
                font-family: '" . self::FONT_FAMILY . "';
                line-height: 40px;
            }
            @media screen and (min-width: 440px) { div.x726x-b-page-title h2 { font-size: 24px; } }
            @media screen and (min-width: 640px) { div.x726x-b-page-title h2 { font-size: 30px; padding: 0 20px; } }
            @media screen and (min-width: 840px) { div.x726x-b-page-title h2 { font-size: 40px; padding: 0 20px; } } 
        </style>";
    
    public static function getPageTitleHTML($titleText) {
        return "                <div class=\"x726x-b-page-title\"><h2>" . $titleText . "</h2></div>";
    }
}
