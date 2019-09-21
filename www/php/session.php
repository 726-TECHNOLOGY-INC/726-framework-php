<?php 
session_start(); 
    
if (!isset($_SESSION['id'])) {
    $_SESSION['id'] = session_id();
    $_SESSION['logged_in'] = false;
} 
    
if (!isset($_SESSION['ip'])) {
    $_SESSION['ip'] = getenv('REMOTE_ADDR'); 
}

if (isset($_SESSION['timeout'])) {
    $duration = time() - $_SESSION['timeout'];
    if ($duration > SITE_SESSION_TIMEOUT) {
        session_unset(); 
        session_destroy();
    } else {
        $_SESSION['timeout'] = time();
    }
}     
    
if (!isset($_SESSION['member_email'])) {
    $_SESSION['member_email'] = "";
}