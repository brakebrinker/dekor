<header>
	<div class="up-header">
		<div class="logo-container">
			<a href="{$_modx->config['site_url']}" id="logo">
				<img src="{$_modx->config['assets_url']}images/logo-white.png">
				<img src="{$_modx->config['assets_url']}images/logo-beige.png">
			</a>
			<div class="site-descr">{$_modx->config['header_logo_title']}</div>
		</div>
		<div class="address-container">
			<img src="{$_modx->config['assets_url']}images/icon-balun.png" alt="">
			<div class="border"></div>
			<div class="text">{$_modx->config['header_address']}</div>
		</div>
		<div class="phone-container">
			<img src="{$_modx->config['assets_url']}images/icon-phone.png" alt="">
			<div class="border"></div>
			<div class="phone-inf-container">
				<div class="text">{$_modx->config['header_phone']}</div>
				<div class="text">{$_modx->config['header_email']}</div>
				<div class="text">{$_modx->config['header_work_modes']}</div>
			</div>
			
		</div>
		<div class="call">
			<a href="#">Заказать звонок</a>
			<a class="mini-cart-header" href="{$_modx->makeUrl(23)}" target="_blank">
			[[!msMiniCart?tpl=`miniCartTpl`]]
			</a>
		</div>
	</div>
	<div class="down-header">
		{$_modx->runSnippet('pdoMenu', [
		'parents' => '0',
		'level' => '1',
		'tplOuter' => '@INLINE <div class="menu" >{$wrapper}</div>',
		'tpl' => '@INLINE <a href="{$link}" {$attributes}>{$menutitle}</a>{$wrapper}',
		'firstClass' => 'homepage',
		'hereClass' => 'current',
		])}
		<!-- <div class="price-request-button" title="Запросить прайс-лист">Прайс</div> -->
	</div>
</header>
