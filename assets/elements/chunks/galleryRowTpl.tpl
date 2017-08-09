<div class="object">
    <div class="object-name">{$pagetitle}</div>
    <div class="object-descr">{$introtext}</div>
    {set $rows = $_pls['tv.resourcealbum']}
    </div>
    <!-- <div class="object-more"><a href="#">Подробнее</a></div> -->
    <div class="waterwheel-carousel">
    {foreach $rows as $row}
      <img src="[[pthumb? &input=`{$_modx->config['assets_url']}images/gallery/{$row.image}` &options=`&w=640&h=480&zc=0&aoe=0&far=0`]]" alt="{$_modx->resource.pagetitle}" alt="">
    {/foreach}
    </div>
</div>