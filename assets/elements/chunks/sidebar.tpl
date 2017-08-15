<aside class="catalog-category">
	<h3>Категории</h3>
	{$_modx->runSnippet('!pdoResources', [
		'tpl' => '@INLINE <li><a href="{$_modx->makeUrl($id)}">{$pagetitle}</a></li>',
		'tplWrapper' => '@INLINE <ul>{$output}</ul>'
		'where' => '{"parent":"2","isfolder":"1"}',
		'parents' => '2',
		'limit' => '0',
		'depth' => '1',
	])}
</aside>