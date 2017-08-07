{set $imageRes = $_modx->runSnippet('pthumb', [
    'input' => $image,
    'options' => 'h=195&w=255&zc=C',
])}
<div class="ms2_product_main">
	<div class="product_img"><a href="[[~[[+id]]]]">
		<img src="{$imageRes}" alt="Панели {$pagetitle}"/></a>
	</div>
	<div class="product_info">
		<form method="post" class="ms2_form">
			<div>
				<div class="prod-title">[[+pagetitle]]</div>
				<span class="price">[[+price]] [[%ms2_frontend_currency]]</span>
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
			[[+old_price]]
			<input type="hidden" name="id" value="[[+id]]">
			<input type="hidden" name="count" value="1">
			<input type="hidden" name="options" value="[]">
			<button class="btn btn-default" type="submit" name="ms2_action" value="cart/add"><i class="glyphicon glyphicon-barcode"></i> [[%ms2_frontend_add_to_cart]]</button>
		</form>
	</div>
</div>
<!--minishop2_popular <i class="glyphicon glyphicon-star" title="[[%ms2_frontend_popular]]"></i>-->
<!--minishop2_new <i class="glyphicon glyphicon-flag" title="[[%ms2_frontend_new]]"></i>-->
<!--minishop2_favorite <i class="glyphicon glyphicon-bookmark" title="[[%ms2_frontend_favorite]]"></i>-->
<!--minishop2_old_price <span class="old_price">[[+old_price]] [[%ms2_frontend_currency]]</span>-->