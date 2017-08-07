{set $rows = json_decode($_modx->resource.sliderhome, true)}
{foreach $rows as $row}
<div class="slider-item">
  <img src="{$row.image}" alt="{$row.alt}">
  <div class="slider-descr">
    <h2>{$row.title}</h2>
    <h3>{$row.description}</h3>
  </div>
</div>
{/foreach}