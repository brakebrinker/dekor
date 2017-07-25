{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section>
    <h1>{$_modx->resource.longtitle}</h1>
    {$_modx->resource.content}
</section>
{$_modx->runSnippet('pdoResources', [
  'tpl' => '@FILE chunks/productRowTpl.tpl',
  'limit' => '0',
])}

{/block}