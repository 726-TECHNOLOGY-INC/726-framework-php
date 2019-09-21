<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title><?php echo(\x726xTECHx\xPHPx\PageConfig::getFullTitle()); ?></title>
        <meta name="description" content="<?php echo(\x726xTECHx\xPHPx\PageConfig::$description); ?>">
        <meta name="author" content="726 TECHNOLOGY INC">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?php echo(\x726xTECHx\xPHPx\PageConfig::getMetaProperties()); ?>
        <link rel="shortcut icon" href="<?php echo(SITE_CANONICAL); ?>favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
        <link rel="manifest" href="/site.webmanifest">
        <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
        <meta name="msapplication-TileColor" content="#9f00a7">
        <meta name="theme-color" content="#ffffff">
<?php foreach (\x726xTECHx\xPHPx\PageConfig::$css as $stylesheet) { ?>
        <link rel="stylesheet" type="text/css" href="<?php echo($stylesheet . '?' . date("Y-m-d")); ?>">
<?php } ?>
<?php foreach (\x726xTECHx\xPHPx\PageConfig::$js as $javascript) { ?>
        <script type="text/javascript" src="<?php echo($javascript . '?' . date("Y-m-d")); ?>"></script>
<?php } ?>
<?php if (\x726xTECHx\xPHPx\PageConfig::$requireSnippet) { require "./php/seo/snippet.php"; }