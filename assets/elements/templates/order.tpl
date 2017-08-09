{extends 'file:templates/_base.tpl'}

{block 'content'}
<section class="cart">
	<div class="cart-container">
		<h1>{$_modx->resource.longtitle}</h1>
		{$_modx->runSnippet('!msOrder', [
		  'tplOuter' => 'orderBillingTpl',
		])}
	</div>
</section>
<div class="margin-top-40"></div>
{/block}