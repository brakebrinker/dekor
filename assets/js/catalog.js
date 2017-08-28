$('.form-control input[type="checkbox"]').on('click', function() {
	var filterOption = $(this).parent('.form-control');
	//var active = $(this).hasClass('active');
	var filter = filterOption.attr('id');

	var value = '';
	if (filter == 'select-size') { // категорийможетбытьвыбранонесколько (checkbox)
	$(this).toggleClass('active');
	var categories = '';
	// $('.filter button[data-filter="category"].active').each(function() {
	// 	categories += $(this).data('value') + '|';
	// });
	// value = categories.substr(0, categories.length - 1);
	}
	// else { // остальные фильтры (язык и формат) - только один вариант (radiobutton)
	// 	filter_group.find('button').removeClass('active');
	// if (!active) {
	// 	$(this).addClass('active');
	// 	value = $(this).data('value');
	// }
	// }
	// uri = setAttr(filter, value);
	// $('#catalog').html('');
	// loadCatalog(0, 1);
	// return false;
});