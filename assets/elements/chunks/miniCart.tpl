<div id="msMiniCart" [[+total_count:isnot=`0`:then=`class="full"`:else=``]]>
	<div class="empty">
		<span class="ms2_total_count">0</span>
	</div>
	<div class="not_empty">
		<span class="ms2_total_count">
		{if $total_count}
		{$total_count}
		{else}
		0
		{/if}
		</span>
	</div>
</div>