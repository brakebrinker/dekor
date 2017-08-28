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
<script src="{$_modx->config['assets_url']}js/jquery.meanmenu.js"></script>
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
    $('header nav.menu').meanmenu();
  });
</script>
<script>
jQuery(document).ready(function($) {
    //Carousel gallery
    var dwidth = $(document).width();

    if (dwidth > 1170) {
      $(".waterwheel-carousel").waterwheelCarousel({
        horizon: 320,
        horizonOffset: 60,
        horizonOffsetMultiplier: .7,
        separation: 250,
        edgeFadeEnabled: true,
        forcedImageWidth: 800,
        forcedImageHeight: 600,
        flankingItems: 1
      });
      //Carousel main
      $(".waterwheel-carousel-main").waterwheelCarousel({
        horizon: 320,
        horizonOffset: 60,
        horizonOffsetMultiplier: .7,
        separation: 220,
        edgeFadeEnabled: true,
        forcedImageWidth: 800,
        forcedImageHeight: 600,
        flankingItems: 2
      });
    } else if (dwidth <= 1170 && dwidth > 992) {
      $(".waterwheel-carousel").waterwheelCarousel({
        horizon: 300,
        horizonOffset: 50,
        horizonOffsetMultiplier: .7,
        separation: 230,
        edgeFadeEnabled: true,
        forcedImageWidth: 700,
        forcedImageHeight: 550,
        flankingItems: 1
      });
      $(".waterwheel-carousel-main").waterwheelCarousel({
        horizon: 300,
        horizonOffset: 50,
        horizonOffsetMultiplier: .7,
        separation: 230,
        edgeFadeEnabled: true,
        forcedImageWidth: 700,
        forcedImageHeight: 550,
        flankingItems: 1
      });
    } else if (dwidth <= 992 && dwidth > 768) {
    $(".waterwheel-carousel").waterwheelCarousel({
      horizon: 260,
      horizonOffset: 25,
      horizonOffsetMultiplier: .7,
      separation: 180,
      edgeFadeEnabled: true,
      forcedImageWidth: 500,
      forcedImageHeight: 400,
      flankingItems: 1
    });

    $(".waterwheel-carousel-main").waterwheelCarousel({
      horizon: 260,
      horizonOffset: 25,
      horizonOffsetMultiplier: .7,
      separation: 180,
      edgeFadeEnabled: true,
      forcedImageWidth: 500,
      forcedImageHeight: 400,
      flankingItems: 1
    });
  } else if (dwidth <= 768 && dwidth > 520) {
    $(".waterwheel-carousel").waterwheelCarousel({
      horizon: 200,
      horizonOffset: 25,
      horizonOffsetMultiplier: .7,
      separation: 130,
      edgeFadeEnabled: true,
      forcedImageWidth: 350,
      forcedImageHeight: 300,
      flankingItems: 1
    });
    //Carousel main
    $(".waterwheel-carousel-main").waterwheelCarousel({
      horizon: 200,
      horizonOffset: 25,
      horizonOffsetMultiplier: .7,
      separation: 130,
      edgeFadeEnabled: true,
      forcedImageWidth: 350,
      forcedImageHeight: 300,
      flankingItems: 1
    });
  } else if (dwidth <= 520 && dwidth > 380) {
    $(".waterwheel-carousel").waterwheelCarousel({
      horizon: 150,
      horizonOffset: 25,
      horizonOffsetMultiplier: .7,
      separation: 80,
      edgeFadeEnabled: true,
      forcedImageWidth: 250,
      forcedImageHeight: 200,
      flankingItems: 1
    });
    //Carousel main
    $(".waterwheel-carousel-main").waterwheelCarousel({
      horizon: 150,
      horizonOffset: 25,
      horizonOffsetMultiplier: .7,
      separation: 80,
      edgeFadeEnabled: true,
      forcedImageWidth: 250,
      forcedImageHeight: 200,
      flankingItems: 1
    });
  } else if (dwidth <= 380) {
    $(".waterwheel-carousel").waterwheelCarousel({
      horizon: 100,
      horizonOffset: 15,
      horizonOffsetMultiplier: .7,
      separation: 70,
      edgeFadeEnabled: true,
      forcedImageWidth: 150,
      forcedImageHeight: 100,
      flankingItems: 1
    });
    //Carousel main
    $(".waterwheel-carousel-main").waterwheelCarousel({
      horizon: 100,
      horizonOffset: 15,
      horizonOffsetMultiplier: .7,
      separation: 70,
      edgeFadeEnabled: true,
      forcedImageWidth: 150,
      forcedImageHeight: 100,
      flankingItems: 1
    });
  }
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