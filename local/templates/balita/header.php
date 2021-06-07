<?php if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();?>
<?php 
  use Bitrix\Main\Page\Asset;
?>
<?php ?>

<!doctype html>
<html lang="en">
  <head>
    <?php $APPLICATION->ShowHead() ?>
    <title><?php $APPLICATION->ShowTitle('Colorlib Balita &mdash; Minimal Blog Template') ?></title>
    <?php 
      Asset::getInstance()->addString('<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">');
      Asset::getInstance()->addString('<meta charset="utf-8">');
      Asset::getInstance()->addString('<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700" rel="stylesheet">');


      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.'/fonts/flaticon/font/flaticon.css');
      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.'/fonts/fontawesome/css/font-awesome.min.css');
      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.'/fonts/ionicons/css/ionicons.min.css');
      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.'/css/owl.carousel.min.css');
      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.'/css/animate.css');
      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.'/css/bootstrap.css');
      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.'/css/style.css');


      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.'/js/jquery-3.2.1.min.js');
      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.'/js/jquery-migrate-3.0.0.js');
      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.'/js/popper.min.js');
      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.'/js/bootstrap.min.js');
      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.'/js/owl.carousel.min.js');
      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.'/js/jquery.waypoints.min.js');
      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.'/js/jquery.stellar.min.js');
      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.'/js/main.js');
    
    ?>
  </head>
  <body>
    <div id="panel"><?php $APPLICATION->ShowPanel() ?></div>

    <header role="banner">
      <div class="top-bar">
        <div class="container">
          <div class="row">
            <div class="col-9 social">
              <a href="#"><span class="fa fa-twitter"></span></a>
              <a href="#"><span class="fa fa-facebook"></span></a>
              <a href="#"><span class="fa fa-instagram"></span></a>
              <a href="#"><span class="fa fa-youtube-play"></span></a>
              <a href="#"><span class="fa fa-vimeo"></span></a>
              <a href="#"><span class="fa fa-snapchat"></span></a>
            </div>
            <div class="col-3 search-top">
              <!-- <a href="#"><span class="fa fa-search"></span></a> -->
              <form action="#" class="search-top-form">
                <span class="icon fa fa-search"></span>
                <input type="text" id="s" placeholder="Type keyword to search...">
              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="container logo-wrap">
        <div class="row pt-5">
          <div class="col-12 text-center">
            <a class="absolute-toggle d-block d-md-none" data-toggle="collapse" href="#navbarMenu" role="button" aria-expanded="false" aria-controls="navbarMenu"><span class="burger-lines"></span></a>
            <h1 class="site-logo"><a href="/">Balita</a></h1>
          </div>
        </div>
      </div>
      
      <?$APPLICATION->IncludeComponent(
	"bitrix:menu", 
	"menu_balita", 
	array(
		"ALLOW_MULTI_SELECT" => "N",
		"CHILD_MENU_TYPE" => "podrazdel",
		"DELAY" => "N",
		"MAX_LEVEL" => "2",
		"MENU_CACHE_GET_VARS" => array(
		),
		"MENU_CACHE_TIME" => "3600",
		"MENU_CACHE_TYPE" => "N",
		"MENU_CACHE_USE_GROUPS" => "Y",
		"ROOT_MENU_TYPE" => "main",
		"USE_EXT" => "Y",
		"COMPONENT_TEMPLATE" => "menu_balita"
	),
	false,
	array(
		"ACTIVE_COMPONENT" => "Y"
	)
);?>
      
    </header>
    <!-- END header -->

    