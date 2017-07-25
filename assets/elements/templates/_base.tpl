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
{else}
    <body id="catalog">
{/if}
<div id="dpi"></div>

    {insert 'file:chunks/header.tpl'}
    
    {block 'content'}{/block}

    <!-- Java Script ================================================== -->
    {insert 'file:chunks/scripts.tpl'}

    {insert 'file:chunks/footer.tpl'}

</body>
</html>