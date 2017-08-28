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
	
	<form action="">
		<div class="select-wrapper">
			
            <select id="select-size" name="select-size" class="form-control">
            	[[!getOption? &name=`size` &tpl=`myGetOptionTpl`]]
            <pre>
            [[!msProducts? 
            &parents=`2` 
            &depth=`10` 
            &includeContent=`1` 
            &tpl=`[[!msOptions?name=`tags`&tplOuter=`@INLINE <p><strong>Tags:</strong> [[+rows]]</p>`&tplRow=`@INLINE <a href="search.html?size=[[+value]]">[[+value]]</a> `]]`
            ]]
        	</pre>
	        </select>
	        <select id="select-color" name="select-color" class="form-control">
				[[!getOption? &name=`color` &tpl=`myGetOptionTpl`]]
	        </select>


        </div><!-- /.select-wrapper -->
	</form>
</aside>