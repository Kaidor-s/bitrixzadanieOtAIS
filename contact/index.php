<?
require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Contact");
?>
 <section class="site-section">
      <div class="container">
		<div class="row mb-4">
		    <div class="col-md-6">
	            <h1>Contact</h1>
          	</div>
        </div>
        <div class="row blog-entries">
          	<div class="col-md-12 col-lg-8 main-content">
				<?php 
				$APPLICATION->IncludeComponent("bitrix:main.feedback","",Array(
				        "USE_CAPTCHA" => "Y",
				        "OK_TEXT" => "Спасибо, ваше сообщение принято.",
				        "EMAIL_TO" => "my@email.com",
				        "REQUIRED_FIELDS" => Array("NAME","EMAIL","MESSAGE"),
				        "EVENT_MESSAGE_ID" => Array("5")
				    )
				);
				?>

			</div>
          <!-- END main-content -->

          	<?require($_SERVER["DOCUMENT_ROOT"].BALITA_TEMPLATE_PASS."/sidebar.php");?>
        </div>
<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>