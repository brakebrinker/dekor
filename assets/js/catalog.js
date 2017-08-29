var uri = '/catalog/';

$('.form-control input[type="checkbox"]').on('click', function() {
	var filterOption = $(this).parent().parent('.form-control');
	//var active = $(this).hasClass('active');
	var filter = filterOption.attr('id');
	var value = '';

	if (filter == 'select-size') { // категорийможетбытьвыбранонесколько (checkbox)
		$(this).toggleClass('active');
		var sizes = '';
		$('#' + filter + ' input[type="checkbox"].active').each(function() {
			sizes += $(this).val() + '|';
		});
		value = sizes.substr(0, sizes.length - 1);
	}
	// else { // остальные фильтры (язык и формат) - только один вариант (radiobutton)
	// 	filter_group.find('button').removeClass('active');
	// if (!active) {
	// 	$(this).addClass('active');
	// 	value = $(this).data('value');
	// }
	// }
	uri = setAttr(filter, value);
	console.log(uri);
	$.get(uri);
	$('#pdopage').html('');
	//loadCatalog(0, 1);
});

function setAttr(prmName, val) {
	var res = '';
	var d = uri.split("?");
	var base = d[0];
	var query = d[1];
	if (query) {
		var params = query.split("&");
		for (var i = 0; i < params.length; i++) {
			var keyval = params[i].split("=");
			if (keyval[0] != prmName) {
				res += params[i] + '&';
			}
		}
	}
	if (val != '') res += prmName + '=' + val;
	return base + '?' + res;
}