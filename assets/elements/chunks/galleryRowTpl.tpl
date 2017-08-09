<div class="object">
    <div class="object-name">{$pagetitle}</div>
    <div class="object-descr">{$introtext}</div>
    {set $rows = $_pls['tv.resourcealbum']}
    </div>
    <!-- <div class="object-more"><a href="#">Подробнее</a></div> -->
    <div class="waterwheel-carousel">
    {foreach $rows as $row}
      <img src="{$_modx->config['assets_url']}images/gallery/{$row.image}" alt="">
    {/foreach}
    </div>
</div>