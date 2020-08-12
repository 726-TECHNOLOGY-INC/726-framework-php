<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
namespace x726xTECHx\xPHPx\xAPIx;

class Auction {
    private $eaby_affiliate_id = "##########";
    private $ebay_sand_app_id = "726TECHN-726Frame-SBX-#########-########";
    private $ebay_prod_app_id = "726TECHN-726Frame-PRD-#########-########";
    
    public static function getRSSFeed($url) {
        $rss = new DOMDocument();
	$feed = array();
        
	$rss->load($url);
        
        foreach ($rss->getElementsByTagName('item') as $node) {
            $item = array ( 
    'title' => $node->getElementsByTagName('title')->item(0)->nodeValue,
    'desc' => $node->getElementsByTagName('description')->item(0)->nodeValue,
    'link' => $node->getElementsByTagName('link')->item(0)->nodeValue,
    'date' => $node->getElementsByTagName('pubDate')->item(0)->nodeValue,
            );
            
            array_push($feed, $item);
	}

        return $feed;
    }
    
    private static function getPriceFilters($minPrice, $maxPrice) {
        $minPriceFilter = "";
        $maxPriceFilter = "";
        $ct_itemfilter = 0;
        
        if ($minPrice > 0) {
            $minPriceFilter = "&itemFilter(" . $ct_itemfilter . ").name=MinPrice" . 
                        "&itemFilter(" . $ct_itemfilter . ").value=" . $minPrice . 
                        "&itemFilter(" . $ct_itemfilter . ").paramName=Currency" . 
                        "&itemFilter(" . $ct_itemfilter . ").paramValue=USD";
            $ct_itemfilter++;
        }
        if ($maxPrice > 0) {
            $maxPriceFilter = "&itemFilter(" . $ct_itemfilter . ").name=MaxPrice" . 
                        "&itemFilter(" . $ct_itemfilter . ").value=" . $maxPrice . 
                        "&itemFilter(" . $ct_itemfilter . ").paramName=Currency" . 
                        "&itemFilter(" . $ct_itemfilter . ").paramValue=USD";
            $ct_itemfilter++;
        }
    }

    public static function getHTTPFeed($kwd, $minPrice, $maxPrice, $useAffiliate = false, $useProd = true) {        
        $affiliateLink = ($useAffiliate) ? "&affiliate.trackingId=" . $this->eaby_affiliate_id . "&affiliate.networkId=9" : "";

        $query = "http://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByKeywords" .
        "&SERVICE-VERSION=1.0.0" . 
        "&SECURITY-APPNAME=" . ($useProd ? $this->ebay_prod_app_id : $this->ebay_sand_app_id) .
        "&RESPONSE-DATA-FORMAT=XML" . 
        "&REST-PAYLOAD" . $affiliateLink . $this->getPriceFilters($minPrice, $maxPrice) . 
        "&keywords=" . $kwd;

        $cURL = curl_init();
        
        curl_setopt($cURL, CURLOPT_URL, $query);
        curl_setopt($cURL, CURLOPT_HTTPGET, true);
        curl_setopt($cURL, CURLOPT_RETURNTRANSFER, TRUE);
        
        $result = curl_exec($cURL);
        
        curl_close($cURL);
        
        return $result;
    }
}
