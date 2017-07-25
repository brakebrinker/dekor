<!DOCTYPE html>

<html lang="ru">

<head>

    <meta charset="UTF-8">

    <title>Квадро - объёмные панели от ДЕКО•Р</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />

    <link href="styles/styles.css" rel="stylesheet">

</head>

<body id="product">

<header>

    <a href="http://deco-r.su" id="logo">

        <img src="styles/logo-white.svg">

        <img src="styles/logo-beige.svg">

    </a>

    <div>

        <a href="tel:+74959606074"><span>Россия, </span>Москва, +7 (495) 960 60 74</a>

        <a href="catalog.html">Каталог</a>

        <a href="gallery.html">Галерея</a>

        <a href="manufacture.html">Производство</a>

        <a href="index.html#contact">Контакты</a>

    </div>

    <div class="price-request-button" title="Запросить прайс-лист">Прайс</div>

</header>



<section>

    <h1>Квадро - объёмные панели от "ДЕКО•Р"</h1>

    <p>"<strong>Квадро</strong>" - квадратный орнамент различной рельефности</p>

    <p>Подходят для стилей: хай-тек, техно, постмодернизм</p>

    <p>Базовые линейные размеры <strong>1200х600 мм</strong>, глубина рельефа 3-5 мм</p>

    <p>Под заказ возможно изготовление панелей с размерами до 900х3000 мм</p>

    <!--<a href="deco-r-price-2016-12-16.xlsx" class="brand-link">Прайс</a>-->

    <p>Панели поставляются неокрашенными</p>

    <p>На фотографиях ниже показаны примеры окраски панелей</p>

</section>

<section>

    <img src="catalog/dek0004w-800.jpg" class="showbox" alt="Панели Квадро в белом цвете">

    <img src="catalog/dek0004wa-800.jpg" class="showbox" alt="Панели Квадро в белом цвете">

    <p>Панели, окрашенные белой краской</p>

    <img src="catalog/dek0004b-800.jpg" class="showbox" alt="Панели Квадро в коричневом цвете">

    <img src="catalog/dek0004ba-800.jpg" class="showbox" alt="Панели Квадро в коричневом цвете">

    <p>Панели, окрашенные коричневой краской</p>

    <img src="catalog/dek0004m-800.jpg" class="showbox" alt="Панели Квадро, покрытые морилкой">

    <img src="catalog/dek0004ma-800.jpg" class="showbox" alt="Панели Квадро, покрытые морилкой">

    <p>Панели, покрытые морилкой</p>

</section>



<div class="popup-wrap">

    <div class="popup">

        <form id="ajax-contact-form" action="">

            <p>Отправьте нам сообщение, и мы свяжемся с Вами любым удобным для Вас способом</p>

            <label for="name">Имя</label><input id="name" name="name"><br>

            <label for="phone">Телефон</label><input id="phone" name="phone"><br>

            <label for="email">E-mail</label><input type="email" id="email" name="email"><br>

            <label for="subject">Тема</label><input id="subject" name="subject" value="Запрос прайса на продукцию Деко-Р"><br>

            <label for="message">Сообщение</label><textarea id="message" name="message"></textarea><br>

            <input type="submit" name="submit" value="Отправить">

        </form>

        <p id="errors"></p>

        <div class="popup-close-button">&#10060;</div>

    </div>

</div>


<?php
	include($_SERVER['DOCUMENT_ROOT'].'/inc/form.php');
	include($_SERVER['DOCUMENT_ROOT'].'/inc/footer.php');
?>