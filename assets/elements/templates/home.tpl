{extends 'file:templates/_base.tpl'} 

{block 'content'}
<section class="slider">
    <div class="slider-home-container">
    {insert 'file:chunks/sliderHome.tpl'}
    </div>
</section>
<section class="company-products-wrapper">
    <div class="company-products">
        <h3>Продукция компании</h3>
        <div class="company-products-container">
            <div class="company-products__item">
                <img src="{$_modx->config['assets_url']}images/cat-pr-1.jpg" alt="">
                <a href=""><div class="company-products__title">
                    Стеновые панели
                </div></a>
            </div>
            <div class="company-products__item">
                <img src="{$_modx->config['assets_url']}images/cat-pr-2.jpg" alt="">
                <a href=""><div class="company-products__title">
                    Фасадные панели
                </div></a>
            </div>
            <div class="company-products__item">
                <img src="{$_modx->config['assets_url']}images/cat-pr-3.jpg" alt="">
                <a href=""><div class="company-products__title">
                    Дверные панели
                </div></a>
            </div>
        </div>
    </div>
</section>
<section class="home-introtext">
    <div class="home-introtext__container">
        {$_modx->resource.infotext_main}
    </div>
</section>
<section class="benefits">
    <div class="benefits-container">
        <h3>Преимущества 3D панелей</h3>
        <div class="benefits__items">
        {insert 'file:chunks/benefitsHome.tpl'}
        </div>
    </div>
</section>
<section class="home-contenttext">
    <div class="home-contenttext__container">
        {$_modx->resource.content}
    </div>
</section>
<img src="images/samples-01.jpg" class="img-mobile">

<section class="main-catalog-wrapper">
    <div class="main-catalog-container">
        <h3>Каталог товаров</h3>
        <div class="main-catalog__items">
        {$_modx->runSnippet('!msProducts', [
            'parents' => '2',
            'tpl' => '@FILE chunks/productsMainRow.tpl'
        ])}
        </div>
    </div>
</section>
<img src="images/samples-02.jpg" class="img-mobile">
<section class="consult-wrapper">
    <div class="main-consult-container">
    <h3>Получить консультацию</h3>
    [[!AjaxForm?
        &snippet=`FormIt`
        &form=`@FILE chunks/consultForm.tpl`
        &hooks=`email`
        &emailSubject=`Тестовое сообщение`
        &emailTo=`drummen11@gmail.com`
        &validate=`name:required,email:required,phone:required`
        &validationErrorMessage=`В форме содержатся ошибки!`
        &successMessage=`Сообщение успешно отправлено`
    ]]
    </div>
</section>
<section id="contact">
    <div class="main-cont-wrapper">
        <div><h3>Контакты</h3></div>
        <div>Телефон: <a href="tel:+74959606074">{$_modx->config['header_phone']}</a></div>
        <div>E-mail: <a href="mailto:{$_modx->config['header_email']}">{$_modx->config['header_email']}</a></div>
        <div>Адрес: Московская обл., Солнечногорский район, пгт. Поварово, ул. Почтовая, д.29</div>
    </div>
    <div id="maps">
        <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=H6djMs3um9F-ldMhf3W6DeE6s4EJIntj&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>
    </div>
</section>
{/block}
