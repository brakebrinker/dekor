//smooth scrolling on Index page

var localLinks = document.querySelectorAll("a[href^='#']");

if (localLinks[0]) {

    var $root = $("html, body");

    $(localLinks).click(function() {

        $root.animate({scrollTop: $( $.attr(this, 'href') ).offset().top}, 1000);

        return false;

    });

}



//show and hide Header on Index page

/*(function indexHeader() {

    if (document.getElementById("index")) {

        var firstSection = document.querySelector("section"),

            header = document.querySelector("header"),

            scrollTop = window.pageYOffset || document.documentElement.scrollTop;



        if (scrollTop > firstSection.clientHeight) {header.className = "visible"}



        window.addEventListener("scroll", function () {

            scrollTop = window.pageYOffset || document.documentElement.scrollTop;

            if (scrollTop > firstSection.clientHeight) {

                if (!header.hasAttribute("class")) {header.className = "visible"}

            } else {

                if (header.hasAttribute("class")) {header.removeAttribute("class")}

            }

        });

    }

})();*/



//showbox

(function showBox() {

    var images = document.querySelectorAll(".showbox"),

        dpi, showBoxWrap, showBoxLoading, showBoxImage, buttonClose, buttonNext, buttonPrev;

    function getDPI() { //check dpi

        dpi = document.getElementById("dpi");

        if (!dpi) {

            dpi = document.createElement("div");

            dpi.id = "dpi";

            dpi.style.position = "absolute";

            dpi.style.height = dpi.style.width = "1in";

            dpi.style.top = dpi.style.left = "-100%";

            document.body.appendChild(dpi);

        }

        return (window.innerWidth > 1200 && dpi.offsetHeight < 200);

    }

    if (images[0]) {

        showBoxWrap = document.createElement("div");

        showBoxWrap.id = "showBox";



        showBoxLoading = document.createElement("div");

        showBoxLoading.id = "showBoxLoading";

        showBoxWrap.appendChild(showBoxLoading);



        showBoxImage = document.createElement("div");

        showBoxImage.id = "showBoxImage";

        showBoxWrap.appendChild(showBoxImage);



        buttonClose = document.createElement("span");

        buttonClose.id = "close";

        buttonClose.onclick = function () {showBoxWrap.removeAttribute("class")};

        showBoxWrap.appendChild(buttonClose);



        buttonNext = document.createElement("span");

        buttonNext.id = "next";

        showBoxWrap.appendChild(buttonNext);



        buttonPrev = document.createElement("span");

        buttonPrev.id = "prev";

        showBoxWrap.appendChild(buttonPrev);



        for (var i = 0; i < images.length; i++) {

            images[i].i = i; //to save the number of an image in the array

            images[i].onclick = function () {

                if (getDPI()) showImage(this.i);

            };

        }



        function showImage(i) {

            showBoxImage.style.backgroundImage = "url('" + images[i].src.replace("800", "1600") + "')";

            showBoxWrap.className = "visible";

            buttonNext.onclick = function () {showImage(i < images.length - 1 ? i + 1 : 0)};

            buttonPrev.onclick = function () {showImage(i > 0 ? i - 1 : images.length - 1)};

        }



        document.body.appendChild(showBoxWrap);

    }

})();



// opening price request

(function() {

    var button = document.querySelectorAll('.price-request-button'),

        popup = document.querySelector('.popup-wrap');

    if ( button[0] && popup ) {

        for ( var i = 0; i < button.length; i++ ) {

            button[i].onclick = function () {

                popup.classList.add('visible');

            };

        }

        popup.onclick = function (e) {

            if ( e.target == popup || e.target == popup.querySelector('.popup-close-button') ) {

                popup.classList.remove('visible');

            }

        }

    }

})();



// sending mail

$(document).ready(function() {

    $('#ajax-contact-form').submit(function() {

        var str = $(this).serialize(),

            result;



        $.ajax({

            type: "POST",

            url: "contactform.php",

            data: str,

            success: function(msg) {

                if(msg == 'OK') {

                    result = 'Сообщение отправлено. <br> Спасибо большое, мы свяжемся с вами в течении 30 минут.';
		//Мы свяжемся с Вами в ближайшее время

                    $('#ajax-contact-form').hide();

                }

                else {

                    result = msg;

                }

                $('#errors').html(result);

            }

        });

        return false;

    });

});