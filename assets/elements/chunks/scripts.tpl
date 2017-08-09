<!-- <script src="{$_modx->config['assets_url']}js/jquery-3.1.0.min.js" rel="script"></script> -->
<script
  src="http://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous"></script>
<script>
        // if ($('#product').length != 0) 
        //     $('#product section').find('img').addClass('showbox');
</script>
<script src="{$_modx->config['assets_url']}js/script.js" rel="script"></script>
<script src="{$_modx->config['assets_url']}js/jquery.maskedinput.js"></script>
<script src="{$_modx->config['assets_url']}js/slick.min.js"></script>
<script src="{$_modx->config['assets_url']}js/jquery.magnific-popup.min.js"></script>
<script src="{$_modx->config['assets_url']}js/jquery.waterwheelCarousel.min.js"></script>
<script type="text/javascript">$(function() { $("#phone").mask("+7 (999) 999-99-99"); });</script>

<script>
    //popup
    $('.open-popup-link').magnificPopup({
      type:'inline',
      midClick: true // Allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source in href.
    });

    $('.prod-gallery-popup-link').magnificPopup({
      type: 'image'
      // other options
    });

    $('.gallery-popup').magnificPopup({
          delegate: 'a',
          type: 'image',
          tLoading: 'Loading image #%curr%...',
          mainClass: 'mfp-img-mobile',
          gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0,1] // Will preload 0 - before current, and 1 after the current image
          },
          image: {
            tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
          }
    });
</script>

<script>
jQuery(document).ready(function($) {
    //Carousel gallery
  $(".waterwheel-carousel").waterwheelCarousel({
    horizon: 200,
    horizonOffset: 50,
    horizonOffsetMultiplier: .7,
    separation: 150,
    edgeFadeEnabled: true,
    forcedImageWidth: 500,
    forcedImageHeight: 400,
    flankingItems: 1
  });
  //Carousel main
  $(".waterwheel-carousel-main").waterwheelCarousel({
    horizon: 200,
    horizonOffset: 50,
    horizonOffsetMultiplier: .7,
    separation: 150,
    edgeFadeEnabled: true,
    forcedImageWidth: 500,
    forcedImageHeight: 400,
    flankingItems: 3
  });
});
</script>

<script>
// slider
    $('.slider-home-container').slick({
      infinite: false,
      prevArrow: '<button type="button" class="slick-prev"></button>',
      nextArrow: '<button type="button" class="slick-next"></button>',
    });
</script>
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