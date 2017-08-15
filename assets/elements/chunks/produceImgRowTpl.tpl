{set $rows = $_pls['tv.producealbum']}
</div>
<!-- <div class="object-more"><a href="#">Подробнее</a></div> -->
<div class="gallery-popup">
{foreach $rows as $row}
<a href="[[pthumb? &input=`{$_modx->config['assets_url']}images/produce/{$row.image}` &options=`&w=800&h=&zc=800&aoe=0&far=0`]]">
  <img src="[[pthumb? &input=`{$_modx->config['assets_url']}images/produce/{$row.image}` &options=`&w=265&h=265&zc=0&aoe=0&far=0`]]" alt="{$_modx->resource.pagetitle}" alt="">
</a>
{/foreach}
</div>