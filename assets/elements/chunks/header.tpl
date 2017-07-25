<header>
    <a href="{$_modx->config['site_url']}" id="logo">
        <img src="{$_modx->config['assets_url']}images/logo-white.svg">
        <img src="{$_modx->config['assets_url']}images/logo-beige.svg">
    </a>
    <div>

        <a href="tel:+74959606074">{$_modx->config['header_phone']}</a>
          {$_modx->runSnippet('pdoMenu', [
            'parents' => '0',
            'level' => '1',
            'tplOuter' => '@INLINE <div class="menu" >{$wrapper}</div>',
            'tpl' => '@INLINE <a href="{$link}" {$attributes}>{$menutitle}</a>{$wrapper}',
            'firstClass' => 'homepage',
            'hereClass' => 'current',
          ])}
    </div>
    <div class="price-request-button" title="Запросить прайс-лист">Прайс</div>
</header>
