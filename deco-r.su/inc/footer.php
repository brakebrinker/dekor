<script src="js/jquery-3.1.0.min.js" rel="script"></script>
<script src="js/script.js" rel="script"></script>
<script src="js/jquery.maskedinput.js"></script>
<script type="text/javascript">$(function() { $("#phone").mask("+7 (999) 999-99-99"); });</script> 


<!-- Yandex.Metrika counter -->

<script type="text/javascript">

    (function (d, w, c) {

        (w[c] = w[c] || []).push(function() {

            try {

                w.yaCounter42618539 = new Ya.Metrika({

                    id:42618539,

                    clickmap:true,

                    trackLinks:true,

                    accurateTrackBounce:true,

                    webvisor:true,

                    trackHash:true

                });

            } catch(e) { }

        });



        var n = d.getElementsByTagName("script")[0],

            s = d.createElement("script"),

            f = function () { n.parentNode.insertBefore(s, n); };

        s.type = "text/javascript";

        s.async = true;

        s.src = "https://mc.yandex.ru/metrika/watch.js";



        if (w.opera == "[object Opera]") {

            d.addEventListener("DOMContentLoaded", f, false);

        } else { f(); }

    })(document, window, "yandex_metrika_callbacks");

</script>

<noscript><div><img src="https://mc.yandex.ru/watch/42618539" style="position:absolute; left:-9999px;" alt="" /></div></noscript>

<!-- /Yandex.Metrika counter -->


<script>
function fz152(){
	var forms = document.getElementsByTagName('form');
	for (formID=0; formID<forms.length; formID++) {
		var inputs = forms[formID].getElementsByTagName('input');
		for (i=0; i<inputs.length; i++) {
			if (inputs[i].type == 'submit') {
				inputs[i].onclick = function(curForm){
					return function() { 
						if (curForm.getElementsByClassName('check-fz').length > 0 && curForm.getElementsByClassName('check-fz')[0].checked === false) { alert('Нужно принять условия Политики конфиденциальности'); return false; }
					}
				}(forms[formID]);
			}
		}
	}
}
document.addEventListener('DOMContentLoaded', fz152);
</script>

<footer>

<a href="/politika-kompanii.html">Политика компании в отношении обработки персональных данных</a>
<a href="/soglasie-na-obrabotku.html">Согласие на обработку персональных данных клиентов-физических лиц</a>

</footer>


</body>
</html>