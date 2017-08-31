<aside class="catalog-category">
	<h3>Категории</h3>
	{$_modx->runSnippet('pdoMenu', [
		'tpl' => '@INLINE <li {$classes}><a href="{$_modx->makeUrl($id)}">{$pagetitle}</a></li>',
		'tplWrapper' => '@INLINE <ul>{$output}</ul>'
		'parents' => '2',
		'level' => '1',
		'limit' => '0',
		'showHidden' => '1',
		'tplHere' => '@INLINE <li {$classes}><span>{$pagetitle}</span></li>',
	])}
</aside>