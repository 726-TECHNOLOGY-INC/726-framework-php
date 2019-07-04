<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class LinkPanel {
    const COLOR_BACKGROUND = "linear-gradient(to bottom right, #202030, #272737, #272737)";
    const COLOR_LINK = "#EFC62C";
    const LINK_PANEL_CSS = "
        <style>
            .x726x-b-link-panel {
                padding: 0 10px;
                border-radius: 6px;
            }
            .x726x-b-link-panel:hover {
                background: " . self::COLOR_BACKGROUND . ";
                cursor: pointer;
            }
            .x726x-b-link-panel__a {
                text-decoration: none;
            }
            .x726x-b-link-panel__bar {
                padding: 15px 0;
            }
            .x726x-b-link-panel__link {
                color: " . self::COLOR_LINK . ";
            }
        </style>";
    
    public static function getLinkPanelHTML($url, $name, $desc, $targetnew = false) {
        $atarget = ($targetnew) ? "target=\"_blank\" " : "";
        
        return "
        <div class=\"x726x-b-link-panel\">
            <a class=\"x726x-b-link-panel__a\" " . $atarget . "href=\"" . $url . "\">
                <div class=\"x726x-b-link-panel__bar\">
                    <span class=\"x726x-b-link-panel__link\">" . $name . "</span> - " . $desc . "
                </div>
            </a>
        </div> 
        ";
    }
}

