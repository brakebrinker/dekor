{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section class="gallery">
	<div class="gallery-container">
		<h1>{$_modx->resource.longtitle}</h1>
		{$_modx->resource.content}
		{$_modx->runSnippet('!pdoResources', [
		  'tpl' => '@FILE chunks/galleryRowTpl.tpl',
		  'limit' => '0',
		  'includeTVs' => 'resourcealbum',
		])}
	</div>
</section>
{/block}