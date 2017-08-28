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