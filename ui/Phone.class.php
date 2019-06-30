<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
class Phone {
    const PHONE_TEXT = "Call us at 1-800-822-7391";
    const COLOR_TEXT = "#EFC62C";
    const FONT_FAMILY = "CourierEx";
    const PHONE_CSS = "
        <style>
            .x726x-b-phone-number {
                text-shadow: 5px 5px 5px rgba(0,0,0,1); 
                color: " . self::COLOR_TEXT . "; 
                font-size: 12px; 
                letter-spacing: 2px; 
                font-family: '" . self::FONT_FAMILY . "';
                line-height: 0;
                text-align: left;
                margin: 20px 5px;
                white-space: nowrap;
            }
            @media screen and (min-width: 440px) { .x726x-b-phone-number { font-size: 14px; } }  
            @media screen and (min-width: 540px) { .x726x-b-phone-number { font-size: 18px; } }  
            @media screen and (min-width: 840px) { .x726x-b-phone-number { font-size: 28px; } }  
        </style>";
    
    public static function getPhoneHTML() {
        return "            <div class=\"x726x-b-phone-number\">" . self::PHONE_TEXT . "</div>";
    }
}
