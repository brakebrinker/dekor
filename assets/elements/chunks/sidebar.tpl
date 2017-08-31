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
	
	<form action="" method="get">
		<div class="select-wrapper">
			<h3>Размеры</h3>
            <div id="select-size" name="select-size" class="form-control">
            	[[!getOption? &name=`size` &tpl=`myGetOptionTpl`]]
	        </div>
	        <h3>Цвета</h3>
	        <div id="select-color" name="select-color" class="form-control">
				[[!getOption? &name=`color` &tpl=`myGetOptionTpl`]]
	        </div>
        </div><!-- /.select-wrapper -->
	</form>
</aside>