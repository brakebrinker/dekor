<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">

<base href="{$_modx->config['site_url']}" />

<title>{$_modx->runSnippet('!pdoTitle', ['cache' => '1', 'outputSeparator' => ' | '])} | {$_modx->config.site_name}</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS
================================================== -->
<link href="{$_modx->config['assets_url']}css/styles.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->