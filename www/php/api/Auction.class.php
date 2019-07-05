<?php
/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2019            ALL RIGHTS RESERVED *
*******************************************************************************/
namespace x726xTECHx\xPHPx\xAPIx;

class Auction {
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
}