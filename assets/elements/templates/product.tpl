{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section>
    <h1>{$_modx->resource.longtitle}</h1>
    {$_modx->resource.content}
</section>
{/block}