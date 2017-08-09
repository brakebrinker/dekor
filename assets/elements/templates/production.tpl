{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section class="static">
	<div class="static-wrapper">
    <h1>{$_modx->resource.longtitle}</h1>
    {$_modx->resource.content}
    {set $rows = json_decode($_modx->resource.gallery_imgs, true)}
    {if $rows}
    {foreach $rows as $row}
    
    <img src="[[pthumb? &input=`{$row.image}` &options=`&w=640&h=480&zc=0&aoe=0&far=0`]]" alt="{$_modx->resource.pagetitle}">
    {/foreach}
    {/if}
    </div>
</section>
{/block}