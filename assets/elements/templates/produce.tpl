{extends 'file:templates/_base.tpl'} 

{block 'content'}
{insert 'file:chunks/breadcrumbs.tpl'}
<section class="gallery">
	<div class="gallery-container">
		<h1>{$_modx->resource.longtitle}</h1>
		<div class="produce-content">
		{$_modx->resource.content}
		</div>
		{set $rows = json_decode($_modx->resource.producealbum, true)}
		<div class="produce gallery-popup">
		{foreach $rows as $row}
		<a href="[[pthumb? &input=`{$_modx->config['assets_url']}images/produce/{$row.image}` &options=`&w=800&h=&zc=800&aoe=0&far=0`]]">
		  <img src="[[pthumb? &input=`{$_modx->config['assets_url']}images/produce/{$row.image}` &options=`&w=265&h=265&zc=0&aoe=0&far=0`]]" alt="{$_modx->resource.pagetitle}" alt="">
		</a>
		{/foreach}
		</div
	</div>
</section>
{/block}