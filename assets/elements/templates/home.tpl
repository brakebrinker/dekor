{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section>
    <!--<img src="styles/deco-r-logo-04-650x490.jpg" class="logo">
    <h1>Декоративные экологичные панели из древесины</h1>-->
    <p>{$_modx->resource.introtext}</p>
  <div class="slogan">Лучшие 3D-панели</div>
</section>
<img src="images/samples-01.jpg" class="img-mobile">
<section>
    <a href="stenovie-paneli.html" class="brand-link">Стеновые панели</a>
    <a href="fasadnie-paneli.html" class="brand-link">Фасадные панели</a>
    <a href="dvernie-paneli.html" class="brand-link">Дверные панели</a>
    <!--<a href="#contact" class="brand-link">Контакты</a>
    <div class="price-request-button brand-link" title="Запросить прайс-лист">Прайс</div>-->
    {$_modx->resource.content}
</section>
<img src="images/samples-02.jpg" class="img-mobile">
<section id="contact">
    <h2>Контакты</h2>
    <p>Телефон: <a href="tel:+74959606074">+7 (495) 960 60 74</a></p>
    <p>E-mail: <a href="mailto:info@deco-r.su">info@deco-r.su</a></p>
    <p>Адрес: Московская обл., Солнечногорский район, пгт. Поварово, ул. Почтовая, д.29</p>
    <div id="maps">
        <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=H6djMs3um9F-ldMhf3W6DeE6s4EJIntj&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>
    </div>
</section>
{/block}
