<div class="object">
    <div class="object-name">{$pagetitle}</div>
    <div class="object-descr">{$introtext}</div>

        <img src="gallery/bedroom-photo01-800.jpg" class="showbox" alt="Оформление спальни, фото 1">
        <img src="gallery/bedroom-photo02-800.jpg" class="showbox" alt="Оформление спальни, фото 2">
        <img src="gallery/bedroom-photo03-800.jpg" class="showbox" alt="Оформление спальни, фото 3">
        <img src="gallery/bedroom-photo04-800.jpg" class="showbox" alt="Оформление спальни, фото 4">
    </div>
    <div class="object-more"><a href="#">Подробнее</a></div>[[getImageList? 
  &tvname=`resourcealbum` 
  &tpl=`@CODE:<h3>[[+title]]</h3><img src="[[+image]]" />` 
  &where=`{"published":"1"}`
]]
</div>