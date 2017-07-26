<section>
    <h2>{$pagetitle}</h2>
    <p>"<strong>{$pagetitle}</strong>"{$introtext}</p>
    {set $image = $_modx->runSnippet('pthumb', [
        'input' => $_pls['tv.product_preview_img'],
        'options' => 'h=400&w=400&zc=C',
    ])}
    {set $image2 = $_modx->runSnippet('pthumb', [
        'input' => $_pls['tv.product_preview_img_2'],
        'options' => 'h=400&w=400&zc=C',
    ])}
    <img src="{$image}" alt="Панели {$pagetitle} в белом цвете"/>
    <img src="{$image2}" alt="Панели {$pagetitle} в коричневом цвете"/>
    <a href="{$_modx->makeUrl($id)}" class="brand-link">Подробнее</a>
</section>