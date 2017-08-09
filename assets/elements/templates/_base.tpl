<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="ru"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="ru">
<!--<![endif]-->

<head>
  {insert 'file:chunks/meta.tpl'}
</head>
{if $_modx->resource.id == 1}
    <body id="index" class="main">
    <div id="dpi"></div>
{/if}
{if $_modx->resource.id == 2}
    <body id="catalog">
    <div id="dpi"></div>
{/if}
{if $_modx->resource.id == 3}
    <body id="gallery">
    <div id="dpi"></div>
{/if}
{if $_modx->resource.id > 20 || $_modx->resource.id == 4}
    <body id="static">
{/if}
{if (($_modx->resource.id != 4) || ($_modx->resource.id != 3 && $_modx->resource.id < 20) || ($_modx->resource.id != 2 && $_modx->resource.id < 20) || ($_modx->resource.id != 1 && $_modx->resource.id < 20)) }
    <body id="product">
{/if}


    {insert 'file:chunks/header.tpl'}
    {block 'content'}{/block}
    {insert 'file:chunks/scripts.tpl'}
    {insert 'file:chunks/footer.tpl'}

</body>
</html>