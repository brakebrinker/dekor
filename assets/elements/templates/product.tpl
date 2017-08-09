{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section class="product-self">
	<div class="product-self__container">
		<div class="product-self__info">
			<div class="product-self__gallery">
				{$_modx->runSnippet('!msGallery', [
				    'product' => $_modx->resource.id,
				    'tplOuter' => '@FILE chunks/productSelfGallery.tpl'
				    'tplRow' => '@FILE chunks/productSelfGalleryRow.tpl'
				])}
			</div>
			<div class="product-self__description">
				<h1>{$_modx->resource.longtitle}</h1>
				<form method="post" class="ms2_form">
				<div class="prod__competition">
					<div class="prod__price">
						<div>Цена:</div>
						<span class="price"><span class="old-price">[[+old_price]] [[%ms2_frontend_currency]]</span>[[+price]] [[%ms2_frontend_currency]]</span>
						
					</div>
					<div class="prod__size">
						<div>Размер:</div>
						<!-- <div>[[!msOptions? &name=`size` &product=`[[+id]]` &tplRow=`@INLINE [[+value]]` &tplOuter=`@INLINE [[+rows]]` ]]</div> -->
						{$_modx->runSnippet('!msOptions', [
							'name' => 'size',
							'tplOuter' => '@INLINE <select name="options[[[+name]]]" class="form-control">[[+rows]]</select>',
							'tplRow' => '@INLINE <option value="[[+value]]" [[+selected]]>[[+value]]</option>',
							'product' => $id
						])}
					</div>
					<div class="prod__color">
						<div>Цвет:</div>
						{$_modx->runSnippet('!msOptions', [
							'name' => 'color',
							'tplOuter' => '@INLINE <select name="options[[[+name]]]" class="form-control">[[+rows]]</select>',
							'tplRow' => '@INLINE <option value="[[+value]]" [[+selected]]>[[+value]]</option>',
							'product' => $id
						])}
					</div>
					<div class="prod__depth">
						<div>Глубина рельефа:</div>
						{$_modx->runSnippet('!msProductOptions', [
							'name' => 'opt_deep',
							'tplOuter' => '@INLINE [[+rows]]',
							'tplRow' => '@INLINE {$value} {$measure_unit}',
							'product' => $id,
							'ignoreOptions' => 'opt_styles'
						])}
					</div>
					<div class="prod__style">
						<div>Стиль:</div>
						<div>
							{$_modx->runSnippet('!msProductOptions', [
								'tplOuter' => 'productOptionsRowMainTpl',
								'tplRow' => 'productOptionsRowMainTplRow',
								'product' => $id,
								'ignoreOptions' => 'opt_deep'
							])}
						</div>
					</div>
					<span class="flags">[[+new]] [[+popular]] [[+favorite]]</span>
					<input type="hidden" name="id" value="{$_modx->resource.id}">
					<input type="hidden" name="count" value="1">
					<input type="hidden" name="options" value="[]">
				</div>
				<button class="btn btn-default" type="submit" name="ms2_action" value="cart/add"><i class="glyphicon glyphicon-barcode"></i> [[%ms2_frontend_add_to_cart]]</button>
				</form>
			</div>
		</div>
		<div class="product-self__text-container">
		{$_modx->resource.content}
		</div>
	</div>
</section>
{/block}