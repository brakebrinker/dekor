{extends 'file:templates/_base.tpl'} 

{block 'content'}
{insert 'file:chunks/breadcrumbs.tpl'}
<section class="static">
	<div class="static-wrapper">
    <h1>{$_modx->resource.longtitle}</h1>
    {$_modx->resource.content}
    </div>
</section>
{/block}