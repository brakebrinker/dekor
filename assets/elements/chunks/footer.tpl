<footer>
	<div class="foot-container">
		<div class="foot-menu">
			{$_modx->runSnippet('pdoMenu', [
			'parents' => '0',
			'level' => '1',
			'tplOuter' => '@INLINE <div class="menu" >{$wrapper}</div>',
			'tpl' => '@INLINE <a href="{$link}" {$attributes}>{$menutitle}</a>{$wrapper}',
			'firstClass' => 'homepage',
			'hereClass' => 'current',
			])}
		</div>
		<div class="foot-catalog">
			<h3>Категории</h3>
			<div class="cat-wrapper">
				{$_modx->runSnippet('!pdoResources', [
				  'tpl' => '@FILE chunks/footProduce.tpl',
				  'parents' => '2',
				  'where' => '{"parent":"2","isfolder":"1"}',
				  'limit' => '0',
				])}
			</div>
		</div>
		<div class="foot-contacts">
			<h3>Контакты</h3>
			<div class="cont-wrapper">
				<div class="text">{$_modx->config['header_phone']}</div>
				<div class="text">{$_modx->config['header_email']}</div>
				<div class="text">{$_modx->config['header_address']}</div>
			</div>
		</div>
	</div>
	<div class="foot-copyright">
		2017 © Deco-r.su, все права защищены
	</div>
<!--     <a href="/politika-kompanii.html">Политика компании в отношении обработки персональных данных</a>
    <a href="/soglasie-na-obrabotku.html">Согласие на обработку персональных данных клиентов-физических лиц</a> -->
</footer>