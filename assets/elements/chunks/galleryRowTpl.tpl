<div class="object">
    <div class="object-name">{$pagetitle}</div>
    <div class="object-descr">{$introtext}</div>
    {set $rows = $_pls['tv.resourcealbum']}
    <!-- <div class="object-more"><a href="#">Подробнее</a></div> -->
    <!-- <div class="waterwheel-carousel"> -->
    <div class="gallery-popup">
    {foreach $rows as $row}
    	<a href="{$_modx->config['assets_url']}images/gallery/{$row.image}">
    		<img src="[[pthumb? &input=`{$_modx->config['assets_url']}images/gallery/{$row.image}` &options=`&h=150&w=200&zc=1&aoe=0&far=0`]]" alt="{$_modx->resource.pagetitle}" alt="">
    	</a>
    {/foreach}
    <!-- <img src="[[pthumb? &input=`{$_modx->config['assets_url']}images/gallery/{$row.image}` &options=`&w=640&h=480&zc=0&aoe=0&far=0`]]" alt="{$_modx->resource.pagetitle}" alt=""> -->
    </div>
</div>