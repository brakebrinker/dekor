<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">

<base href="{$_modx->config['site_url']}" />

<title>{$_modx->runSnippet('!pdoTitle', ['cache' => '1', 'outputSeparator' => ' | '])} | {$_modx->config.site_name}</title>

{if $_modx->resource.keywords_seo?}
<meta name="keywords" content="{$_modx->resource.keywords_seo}" />
{else}
<meta name="keywords" content="{$_modx->resource.pagetitle}" />
{/if}
{if $_modx->resource.description_seo?}
<meta name="description" content="{$_modx->resource.description_seo}" />
{else}
<meta name="description" content="DecoMur" />
{/if}

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=320px, initial-scale=1, maximum-scale=1">
<link href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:200,300,400,700&amp;subset=cyrillic" rel="stylesheet">
<!-- CSS
================================================== -->
<link href="{$_modx->config['assets_url']}css/slick.css" rel="stylesheet">
<link href="{$_modx->config['assets_url']}css/magnific-popup.css" rel="stylesheet">
<link href="{$_modx->config['assets_url']}css/styles.css" rel="stylesheet">


<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->