{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section class="catalog">
	<div class="catalog-wrapper">
    <h1>{$_modx->resource.longtitle}</h1>
    {$_modx->resource.content}
	    <div class="main-catalog__items">
	    {$_modx->runSnippet('!msProducts', [
	        'parents' => '2',
	        'tpl' => '@FILE chunks/productsMainRow.tpl',
	        'where' => '{"Data.old_price:>":0}'
	    ])}
	    </div>
    </div>
</section>
{/block}