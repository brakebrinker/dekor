{extends 'file:templates/_base.tpl'}

{block 'content'}
{insert 'file:chunks/breadcrumbs.tpl'}
<section class="cart">
	<div class="cart-container">
		<h1>{$_modx->resource.longtitle}</h1>
		{'!msCart' | snippet}
	</div>
</section>
<div class="margin-top-40"></div>
{/block}