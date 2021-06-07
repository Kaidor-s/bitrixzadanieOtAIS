<?if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();?>

<?if (!empty($arResult)):?>
<nav class="navbar navbar-expand-md  navbar-light bg-light">
	<div class="container">
		<div class="collapse navbar-collapse" id="navbarMenu">
			<ul class="navbar-nav mx-auto">



			<?
				$flag = 0;
			?>
			<?for($arItem = 0; $arItem < count($arResult); $arItem++ ):?>

				<?if($arResult[$arItem]["SELECTED"]):?>
					<li class="nav-item <?if($arResult[$arItem+1]["DEPTH_LEVEL"] > 1):?>dropdown<?endif?>"><a href="<?=$arResult[$arItem]["LINK"]?>" <?if($arResult[$arItem+1]["DEPTH_LEVEL"] > 1):?>class="nav-link dropdown-toggle" data-toggle="dropdown" href="<?=$arItem["LINK"]?>" id="dropdown05" aria-haspopup="true" aria-expanded="false"<?else:?>class="nav-link active"<?endif?>><?=$arResult[$arItem]["TEXT"]?></a>
				<?else:?>
					<li class="nav-item <?if($arResult[$arItem+1]["DEPTH_LEVEL"] > 1):?>dropdown<?endif?>"><a href="<?=$arResult[$arItem]["LINK"]?>" <?if($arResult[$arItem+1]["DEPTH_LEVEL"] > 1):?>class="nav-link dropdown-toggle" data-toggle="dropdown" href="<?=$arItem["LINK"]?>" id="dropdown05"  aria-haspopup="true" aria-expanded="false"<?else:?>class="nav-link"<?endif?>><?=$arResult[$arItem]["TEXT"]?></a>
				<?endif?>


				<?if($arParams["MAX_LEVEL"] == 2 && $arResult[$arItem+1]["DEPTH_LEVEL"] > 1):?>

					<?if(!$flag):?>
						
						<?$arItem++;?>
						<div class="dropdown-menu" aria-labelledby="dropdown05">
					<?endif?>


					<?for($arItemDown = $arItem; $arItemDown < count($arResult); $arItemDown++ ):?>
						<a href="<?=$arResult[$arItem]["LINK"]?>" class="dropdown-item"><?=$arResult[$arItem]["TEXT"]?></a>
						<?$arItem++;?>

						<?if($arParams["MAX_LEVEL"] == 2 && $arResult[$arItem+1]["DEPTH_LEVEL"] == 1) break;?>
					<?endfor?>


					<?if(!$flag):?>
						</div>
					<?endif?>

					<?$flag = 1;?>
				<?endif?>	

				</li>
				
				
			<?endfor?>



			</ul>
		</div>
    </div>
</nav>			
<?endif?>