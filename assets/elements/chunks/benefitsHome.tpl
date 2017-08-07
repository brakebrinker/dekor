{set $rows = json_decode($_modx->resource.benefitshome, true)}
{foreach $rows as $row}
<div class="benefits-item">
	<div class="benefits-item__cont">
		<div class="benefits__img">
			<img src="{$row.image}" alt="">
		</div>
		<div class="benefits__descr">
			<div class="benefits__title">{$row.title}</div>
			<div class="benefits__text">{$row.description}</div>
		</div>
	</div>
</div>
{/foreach}