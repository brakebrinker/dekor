<div id="call-form" class="white-popup mfp-hide">
	[[!AjaxForm?
		&snippet=`FormIt`
		&form=`@FILE chunks/callForm.tpl`
		&hooks=`email`
		&emailSubject=`Заказ звонка`
		&emailTo=`{$_modx->config['header_email']}`
		&validate=`name:required,phone:required,iagry:required`
		&validationErrorMessage=`В форме содержатся ошибки!`
		&successMessage=`Сообщение успешно отправлено`
	]]
</div>