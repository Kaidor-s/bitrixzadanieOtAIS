<?if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();?>

<?if (!empty($arResult)):?>
<nav class="navbar navbar-expand-md  navbar-light bg-light">
	<div class="container">
		<div class="collapse navbar-collapse" id="navbarMenu">
			<ul class="navbar-nav mx-auto">

			<?
			foreach($arResult as $arItem):
				if($arParams["MAX_LEVEL"] == 1 && $arItem["DEPTH_LEVEL"] > 1) 
					continue;
			?>
				<?if($arItem["SELECTED"]):?>
					<li class="nav-item"><a href="<?=$arItem["LINK"]?>" class="nav-link active"><?=$arItem["TEXT"]?></a></li>
				<?else:?>
					<li class="nav-item"><a href="<?=$arItem["LINK"]?>" class="nav-link"><?=$arItem["TEXT"]?></a></li>
				<?endif?>
				
			<?endforeach?>

			</ul>
		</div>
    </div>
</nav>			
<?endif?>