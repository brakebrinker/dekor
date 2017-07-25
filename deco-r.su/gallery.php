<!DOCTYPE html>

<html lang="ru">

<head>

    <meta charset="UTF-8">

    <title>Фотогалерея объёмных панелей из древесины</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />

    <link href="styles/styles.css" rel="stylesheet">

</head>

<body id="gallery">

<div id="dpi"></div>

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

    <h1>Фотогалерея объёмных панелей ДЕКО•Р</h1>

    <p>Выполненные объекты: интерьеры, элементы декора и мебели</p>


	<div class="object">
		<div class="object-name">Название объекта 1</div>
		<div class="object-descr">Описание объекта 1</div>
		<div class="object-content">
			<img src="gallery/bedroom-photo01-800.jpg" class="showbox" alt="Оформление спальни, фото 1">
			<img src="gallery/bedroom-photo02-800.jpg" class="showbox" alt="Оформление спальни, фото 2">
			<img src="gallery/bedroom-photo03-800.jpg" class="showbox" alt="Оформление спальни, фото 3">
			<img src="gallery/bedroom-photo04-800.jpg" class="showbox" alt="Оформление спальни, фото 4">
		</div>
		<div class="object-more"><a href="#">Подробнее</a></div>
	</div>


	<div class="object">
		<div class="object-name">Название объекта 2</div>
		<div class="object-descr">Описание объекта 2</div>
		<div class="object-content">
			<img src="gallery/home-yum-photo01-800.jpg" class="showbox" alt="Стеновые панели Акант, фото 1">
			<img src="gallery/home-yum-photo02-800.jpg" class="showbox" alt="Стеновые панели Акант, фото 2">
			<img src="gallery/home-yum-photo03-800.jpg" class="showbox" alt="Стеновые панели Акант, фото 3">
			<img src="gallery/home-yum-photo04-800.jpg" class="showbox" alt="Стеновые панели Акант, фото 4">
		</div>
		<div class="object-more"><a href="#">Подробнее</a></div>
	</div>


	<div class="object">
		<div class="object-name">Название объекта 3</div>
		<div class="object-descr">Описание объекта 3</div>
		<div class="object-content">
			<img src="gallery/kitchen-photo01-800.jpg" class="showbox" alt="Кухонные фасады Акант, фото 1">
			<img src="gallery/kitchen-photo02-800.jpg" class="showbox" alt="Кухонные фасады Акант, фото 2">
			<img src="gallery/kitchen-photo03-800.jpg" class="showbox" alt="Кухонные фасады Акант, фото 3">
			<img src="gallery/kitchen-photo04-800.jpg" class="showbox" alt="Кухонные фасады Акант, фото 4">
			<img src="gallery/kitchen-photo05-800.jpg" class="showbox" alt="Кухонные фасады Акант, фото 5">
			<img src="gallery/kitchen-photo06-800.jpg" class="showbox" alt="Кухонные фасады Акант, фото 6">
		</div>
		<div class="object-more"><a href="#">Подробнее</a></div>
	</div>


	<div class="object">
		<div class="object-name">Название объекта 4</div>
		<div class="object-descr">Описание объекта 4</div>
		<div class="object-content">
			<img src="gallery/crimea-photo01-800.jpg" class="showbox" alt="Стеновые панели Волна, фото 1">
			<img src="gallery/crimea-photo02-800.jpg" class="showbox" alt="Стеновые панели Волна, фото 2">
			<img src="gallery/crimea-photo03-800.jpg" class="showbox" alt="Стеновые панели Волна, фото 3">
			<img src="gallery/crimea-photo04-800.jpg" class="showbox" alt="Стеновые панели Волна, фото 4">
			<img src="gallery/crimea-photo05-800.jpg" class="showbox" alt="Стеновые панели Волна, фото 5">
			<img src="gallery/crimea-photo06-800.jpg" class="showbox" alt="Стеновые панели Волна, фото 6">
			<img src="gallery/crimea-photo07-800.jpg" class="showbox" alt="Стеновые панели Волна, фото 7">
			<img src="gallery/crimea-photo08-800.jpg" class="showbox" alt="Стеновые панели Волна, фото 8">
		</div>
		<div class="object-more"><a href="#">Подробнее</a></div>
	</div>


	<div class="object">
		<div class="object-name">Название объекта 5</div>
		<div class="object-descr">Описание объекта 5</div>
		<div class="object-content">
			<img src="gallery/furniture-photo01-800.jpg" class="showbox" alt="Панели для мебели, фото 1">
			<img src="gallery/furniture-photo02-800.jpg" class="showbox" alt="Панели для мебели, фото 2">
			<img src="gallery/furniture-photo03-800.jpg" class="showbox" alt="Панели для мебели, фото 3">
		</div>
		<div class="object-more"><a href="#">Подробнее</a></div>
	</div>

</section>


<?php
	include($_SERVER['DOCUMENT_ROOT'].'/inc/form.php');
	include($_SERVER['DOCUMENT_ROOT'].'/inc/footer.php');
?>