{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section class="catalog">
    <h1>{$_modx->resource.longtitle}</h1>
    {$_modx->resource.content}
</section>
{$_modx->runSnippet('pdoResources', [
  'tpl' => '@FILE chunks/productRowTpl.tpl',
  'limit' => '0',
  'includeTVs' => 'product_preview_img,product_preview_img_2',
])}

{/block}