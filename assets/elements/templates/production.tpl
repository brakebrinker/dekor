{extends 'file:templates/_base.tpl'} 

{block 'content'}
{insert 'file:chunks/breadcrumbs.tpl'}
<section class="static">
	<div class="static-wrapper">
    <h1>{$_modx->resource.longtitle}</h1>
    <div class="static-content">
    {$_modx->resource.content}
    </div>
    {set $rows = json_decode($_modx->resource.manufacturealbum, true)}
    {if $rows}
    <div class="waterwheel-carousel-main">
        {foreach $rows as $row}
        <img src="[[pthumb? &input=`{$_modx->config['assets_url']}images/manufacture/{$row.image}` &options=`&w=640&h=480&zc=0&aoe=0&far=0`]]" alt="{$_modx->resource.pagetitle}">
        {/foreach}
    </div>
    {/if}
    </div>
</section>
{/block}