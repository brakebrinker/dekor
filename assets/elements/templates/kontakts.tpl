{extends 'file:templates/_base.tpl'} 

{block 'content'}
{insert 'file:chunks/breadcrumbs.tpl'}
<section class="static">
	<div class="static-wrapper">
    <h1>{$_modx->resource.longtitle}</h1>
    <div class="contacts-container">
	    <div class="contacts-content">
		    <div>Телефон: <a href="tel:+74959606074">{$_modx->config['header_phone']}</a></div>
		    <div>E-mail: <a href="mailto:{$_modx->config['header_email']}">{$_modx->config['header_email']}</a></div>
		    <div>Адрес: <span>{$_modx->config['header_address']}</span></div>
		</div>
	    <div id="maps" class="contacts-map">
	    	<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=H6djMs3um9F-ldMhf3W6DeE6s4EJIntj&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>
	    </div>
    </div>
    </div>
</section>
{/block}