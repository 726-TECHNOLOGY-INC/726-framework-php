<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class Image {
    const COLOR_BORDER = "#000";
    const IMAGE_BOX_CSS = "
        <style>
            .x726x-b-image-box { margin: 15px; box-sizing: border-box; }
            .x726x-b-image-box__img {
                width: 100%;
                border: 1px solid " . self::COLOR_BORDER . ";
                border-radius: 6px;
                box-sizing: border-box;
                box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.2);
            }
            @media screen and (min-width: 640px) { .x726x-b-image-box { width: 520px; } }
        </style>";
    const IMAGE_LOGO_CSS = "
        <style>
            .x726x-b-logo-box { margin: 15px; }
            .x726x-b-logo-box img {
                border: 1px solid " . self::COLOR_BORDER . ";
                border-radius: 6px;
                box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.2);
                width: 100%;
                height: 100%;
            }
            @media screen and (min-width: 420px) {
                .x726x-b-logo-box { float: right; }
                .x726x-b-logo-box img { width: 240px; height : 240px; }
            }
            @media screen and (min-width: 1600px) { .x726x-b-logo-box img { width: 300px; height : 300px; } }
        </style>";
    
    public static function getImageBoxHTML($url, $alt) {
        return "
            <div class=\"x726x-b-image-box\">
                <img class=\"x726x-b-image-box__img\" src=\"" . $url . "\" alt=\"" . $alt . "\">
            </div>
";
    }

    public static function getImageLogoHTML() {
        return "
            <div class=\"x726x-b-logo-box\" itemscope itemtype=\"http://schema.org/Corporation\">
                <a itemprop=\"url\" href=\"" . SITE_CANONICAL . "\">
                    <img itemprop=\"logo\" src=\"" . SITE_LOGO . "\" alt=\"" . SITE_NAME . "\">
                </a>
            </div>
";
    }
}

