<div class="object">
    <div class="object-name">{$pagetitle}</div>
    <div class="object-descr">{$introtext}</div>
    {set $rows = json_decode($_pls['tv.gallery_imgs'], true)}
    <pre>{print_r($rows)}</pre>
        <img src="gallery/bedroom-photo01-800.jpg" class="showbox" alt="Оформление спальни, фото 1">
        <img src="gallery/bedroom-photo02-800.jpg" class="showbox" alt="Оформление спальни, фото 2">
        <img src="gallery/bedroom-photo03-800.jpg" class="showbox" alt="Оформление спальни, фото 3">
        <img src="gallery/bedroom-photo04-800.jpg" class="showbox" alt="Оформление спальни, фото 4">
    </div>
    <div class="object-more"><a href="#">Подробнее</a></div>
    {foreach $rows as $row}
    <li data-transition="{$row.slstyle ? $row.slstyle : 'fade'}" data-slotamount="7" data-masterspeed="1500">
      <img src="{$row.image}" alt="{$row.alt}" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
      <div class="caption {$row.color} sfb fadeout" data-x="{$row.xposition ? $row.xposition : '145'}" data-y="170" data-speed="400" data-start="800" data-easing="Power4.easeOut">
        <h2>{$row.alt}</h2>
        <h3>{$row.description}</h3>
        <a href="{$row.url ? $row.url : $_modx->makeUrl(4)}" class="caption-btn">Посмотреть предложение</a>
      </div>
    </li>
    {/foreach}
</div>