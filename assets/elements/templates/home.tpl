{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section class="slider">
	<div class="slider-home-container">
	{insert 'file:chunks/sliderHome.tpl'}
	</div>
</section>
<section class="company-products-wrapper">
	<div class="company-products">
		<h1>Продукция компании</h1>
		<div class="company-products-container">
			{$_modx->runSnippet('!pdoResources', [
			  'tpl' => '@FILE chunks/produce.tpl',
			  'parents' => '2',
			  'limit' => '3',
			  'includeTVs' => 'produce_preview_img',
			])}
		</div>
	</div>
</section>
<section class="home-introtext">
	<div class="home-introtext__container">
		{$_modx->resource.infotext_main}
	</div>
</section>
<section class="main-catalog-wrapper">
	<div class="main-catalog-container">
		<h2>Каталог товаров</h2>
		<div class="main-catalog__items">
		{$_modx->runSnippet('!msProducts', [
			'parents' => '2',
			'tpl' => '@FILE chunks/productsMainRow.tpl'
		])}
		</div>
	</div>
</section>
<section class="benefits">
	<div class="benefits-container">
		<h2>Преимущества 3D панелей</h2>
		<div class="benefits__items">
		{insert 'file:chunks/benefitsHome.tpl'}
		</div>
	</div>
</section>
<section class="home-contenttext">
	<div class="home-contenttext__container">
		{$_modx->resource.content}
	</div>
</section>
<section class="main-gallery">
	<div class="main-gallery-container">
		<div class="main-gallery__items waterwheel-carousel">
			<h2>Галерея</h2>
			<div class="object">
			    {set $rows = json_decode($_modx->resource.mainalbum, true)}
			    </div>
			    <!-- <div class="object-more"><a href="#">Подробнее</a></div> -->
			    <div class="waterwheel-carousel-main">
			    {foreach $rows as $row}
			      <img src="[[pthumb? &input=`{$_modx->config['assets_url']}images/main/{$row.image}` &options=`&w=640&h=480&zc=0&aoe=0&far=0`]]" alt="">
			    {/foreach}
			    </div>
			</div>
		</div>
	</div>
</section>
<section class="consult-wrapper">
	<div class="main-consult-container">
	<h2>Получить консультацию</h2>
	[[!AjaxForm?
		&snippet=`FormIt`
		&form=`@FILE chunks/consultForm.tpl`
		&hooks=`email`
		&emailSubject=`Получить консультацию`
		&emailTo=`{$_modx->config['header_email']}`
		&validate=`name:required,email:required,phone:required`
		&validationErrorMessage=`В форме содержатся ошибки!`
		&successMessage=`Сообщение успешно отправлено`
	]]
	</div>
</section>
<section id="contact">
	<div class="main-cont-wrapper">
		<div><h2>Контакты</h2></div>
		<div>Телефон: <a href="tel:+74959606074">{$_modx->config['header_phone']}</a></div>
		<div>E-mail: <a href="mailto:{$_modx->config['header_email']}">{$_modx->config['header_email']}</a></div>
		<div>Адрес: {$_modx->config['header_address']}</div>
	</div>
	<div id="maps">
		<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=H6djMs3um9F-ldMhf3W6DeE6s4EJIntj&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>
	</div>
</section>
{/block}
