<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
namespace x726xTECHx\xPHPx\xUIx;

class ContentBox {
    const COLOR_BACKGROUND = "#303040";
    const COLOR_BACKGROUND_ALT = "#333";
    const COLOR_TITLE = "#202030";
    const COLOR_TEXT = "#fff";
    const COLOR_LINK = "#fff";
    const CONTENT_BOX_CSS = "
        <style>
            .x726x-b-content-box {
                width: 100%;
                border-radius: 6px;
                border: 1px solid black;
                box-sizing: border-box;
                background-color: " . self::COLOR_BACKGROUND . ";
                color: " . self::COLOR_TEXT . ";
                margin: 15px;
                box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.2);
                align-self: flex-start;
            }
            @media screen and (min-width: 540px) { .x726x-b-content-box { width: 470px; } }    

            .x726x-b-content-box__title {
                background: " . self::COLOR_TITLE . ";
                color: " . self::COLOR_TEXT . ";
                margin: 0;
                padding: 0 15px;
                line-height: 40px;
            }

            .x726x-b-content-box__title h2 {
                font-size: 20px;
                letter-spacing: 0.05em;
            }
            @media screen and (min-width: 540px) { .x726x-b-content-box__title h2 { font-size: 24px; } }

            .x726x-b-content-box__content {
                padding: 0 15px;
                letter-spacing: 0.05em;
            }

            .x726x-b-content-box__content a { color: " . self::COLOR_LINK . "; }
        </style>";
    const CONTENT_BOX_SM_CSS = "
        <style>
            .x726x-b-content-box--sm {
                background-color: " . self::COLOR_BACKGROUND_ALT . ";
                margin: 15px;
                color: " . self::COLOR_TEXT . ";
                padding: 10px;
                border-radius: 6px;
                box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.2);
                align-self: flex-start;
                width: 100%;
            }
            @media screen and (min-width: 540px) { div.x726x-b-content-box--sm { width: 450px; } }

            div.x726x-b-content-box--sm__content { padding: 10px; }

            div.x726x-b-content-box--sm__content label { font-size: 20px; color: " . self::COLOR_TEXT . "; }

            div.x726x-b-content-box--sm__content a { color: " . self::COLOR_LINK . "; }
        </style>";

    public function getContentBoxHTML($id, $title, $content) {
        $boxid = ($id == "") ? "" : " id=\"" . $id . "\"";
        $titlehtml = ($title == "") ? "" : ("\n                    &nbsp;<div class=\"x726x-b-content-box__title\"><h2>" . $title . "</h2></div>");
        
        return "
                <div class=\"x726x-b-content-box\"" . $boxid . ">" . $titlehtml ."
                    <div class=\"x726x-b-content-box__content\">" . $content . "</div>
                </div>";
    }

    public function getContentBoxSmHTML($id, $content) {
        return "
                <div id=\"" . $id . "\" class=\"x726x-b-content-box--sm\">
                    <div class=\"x726x-b-content-box--sm__content\">
                        " . $content . " 
                    </div>
                </div>";
    }
}
