{extends 'file:templates/_base.tpl'} 

{block 'content'}
{insert 'file:chunks/breadcrumbs.tpl'}
<section class="catalog">
	<div class="catalog-wrapper">
		<h1>{$_modx->resource.longtitle}</h1>
		<div class="content-all-container">
			{insert 'file:chunks/sidebar.tpl'}
			<div class="center">
			{$_modx->resource.content}
				<div class="main-catalog__items">
					<div id="pdopage">
					    <div class="rows">
							[[!pdoPage?
							           &parents=`$_modx->resource.id`
							           &element=`msProducts`
							           &ajaxMode=`default`
							           &limit=`2`
							           &parents=`$_modx->resource.id`
							           &tpl=`@FILE chunks/productsMainRow.tpl`
							       ]]
				       </div>
						[[!+page.nav]]
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
{/block}