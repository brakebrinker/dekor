var uri = '';
var value = '';
var valueSize = '';
var valueColor = '';
var uriColor = '';
var uriSize = '';

$('.form-control input[type="checkbox"]').on('click', function() {
	var filterOption = $(this).parent().parent('.form-control');
	//var active = $(this).hasClass('active');
	var filter = filterOption.attr('id');

	if (filter == 'select-size') { // категорийможетбытьвыбранонесколько (checkbox)
			uriSize = '';
			if ($(this).hasClass('active')) {
				$(this).prop('checked', false).removeClass('active');
			} else {
				$('#' + filter + ' input[type="checkbox"]').prop('checked', false).removeClass('active');
				$(this).prop('checked', true).addClass('active');
			}
			//$(this).attr("disabled", false);
			// if ($('#' + filter + ' input[type="checkbox"]').hasClass('active') == false) {
			// 	$('#' + filter + ' input[type="checkbox"]').attr("disabled", false);
			// }
			
			// $('#' + filter + ' input[type="checkbox"].active').each(function() {
			// 	sizes += $(this).val() + '|';
			// });
			// value = sizes.substr(0, sizes.length - 1);
			if ($('#' + filter + ' input[type="checkbox"]').hasClass('active')) {
				valueSize = $(this).val() + '&';
				uriSize = filter + '=' + valueSize;
			} else {
				valueSize = '';
				uriSize = '';
			}
	}
	if (filter == 'select-color') { // категорийможетбытьвыбранонесколько (checkbox)
		uriColor = '';
		if ($(this).hasClass('active')) {
			$(this).prop('checked', false).removeClass('active');
		} else {
			$('#' + filter + ' input[type="checkbox"]').prop('checked', false).removeClass('active');
			$(this).prop('checked', true).addClass('active');
		}
		// $('#' + filter + ' input[type="checkbox"].active').each(function() {
		// 	sizes += $(this).val() + '|';
		// });
		// value = sizes.substr(0, sizes.length - 1);
		if ($('#' + filter + ' input[type="checkbox"]').hasClass('active')) {
			valueColor = $(this).val() + '&';
			uriColor = filter + '=' + valueColor;
		} else {
			valueColor = '';
			uriColor = '';
		}
	}
	// else { // остальные фильтры (язык и формат) - только один вариант (radiobutton)
	// 	filter_group.find('button').removeClass('active');
	// if (!active) {
	// 	$(this).addClass('active');
	// 	value = $(this).data('value');
	// }
	// }
	uri = '';
	uri = uriSize + uriColor;
	uri = uri.substr(0, uri.length - 1);
	// console.log('filter: ' + filter);
	// console.log('value: ' + value);
	// console.log('uri: ' + uri);
	// console.log('uriSize: ' + uriSize);
	// console.log('uriColor: ' + uriColor);
	var getUrl = window.location.pathname + '?page=1' + '&';
	// console.log('resurl: ' + getUrl + uri);
	$.get(getUrl + uri, function(data) {
	    var a = '{' + data.split('{')[1];
	    var res = JSON.parse(a);
	    setLocation(getUrl + uri);
	    // console.log(res);
	    $('#pdopage .rows').html(res.output);
	    // $('#pages-id').html(res.pagination);
	});
	// $('#pdopage').html('');
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
	return base + res;
}
function setLocation(curLoc){
    try {
      history.pushState(null, null, curLoc);
      return;
    } catch(e) {}
    location.hash = '#' + curLoc;
}