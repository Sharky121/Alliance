<?php

    if (isset($_GET['id'])) {
        $id = intval($_GET['id']);
    }

    $product_sql = "SELECT p.title, small_desc, content, big_image_path, c.id as cat_id, c.title as cat_title
                    FROM products p 
                    INNER JOIN category c ON c.id = p.category_id
                    WHERE p.id = '$id'";

    $product_res = mysqli_query($link, $product_sql);

    $product_name = mysqli_fetch_all($product_res, MYSQLI_ASSOC);

    foreach ($product_name as $key => $val) {
        $product_title =  $val['title'];
        $category_id = $val['cat_id'];
        $category_title = $val['cat_title'];
        $small_desc = $val['small_desc'];
        $content = $val['content'];
        $big_image_path = $val['big_image_path'];
    };

?>

<main>
    <div class="container">
        <ul class="breadcrumbs-list">
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="index.php">Главная</a>
            </li>
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="?view=catalog&cat=<?= $category_id ?>"><?= $category_title; ?></a>
            </li>
            <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
                <a class="breadcrumbs-list__link"><?= $product_title; ?></a>
            </li>
        </ul>

        <div class="product-wrapper">
            <div class="product__column product__column--left">
                <?php if (empty($big_image_path)): ?>
                    <img class="product-image" src="/img/placeholder.png" alt="Изображение отсутствует">
                <?php else: ?>
                    <img class="product-image" src="<?= $big_image_path; ?>" alt="<?= $product_title; ?>">
                <?php endif; ?>
            </div>

            <div class="product__column product__column--right">
                <h1 class="product-title"><?= $product_title; ?></h1>

                <?php if (empty($small_desc)): ?>
                    <p class="product-small_desc">
                      Наша компания по праву занимает место среди ведущих поставщиков оборудования в сфере переработки пластмасс и цветных металлов
                    </p>
                <?php else: ?>
                    <p class="product-small_desc">
                        <?= $small_desc; ?>
                    </p>
                <?php endif; ?>

<!--                <button class="btn">Скачать технические характеристики</button>-->
                <button class="btn" id="demo01" href="#animatedModal">Узнать цену</button>
            </div>
        </div>

        <!-- Контент -->
        <?php if (empty($content)): ?>
            <p>
                Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.
                В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.
            </p>

        <?php else: ?>
          <div class="specification">
              <?= $content; ?>
          </div>
        <?php endif; ?>
        <p class="small-text">*Мы оставляем за собой право вносить изменения без предварительного уведомления.</p>
    </div>

    <!-- price-modal -->
    <div id="animatedModal" class="price-modal">
        <div class="close-animatedModal">
            <img class="closebt" src="/img/closebt.svg">
        </div>

        <div class="modal-content">
            <h3 class="price-modal__title">Заполните форму и мы вышлем коммерческое предложение</h3>

            <form class="price-form">
                <input name="product_title" type="hidden" value="<?= $product_title; ?>">

                <label class="price-form__label" for="name">Введите ваше имя</label>
                <input class="price-form__input" id="name" name="name" type="text">

                <label class="price-form__label" for="name">Введите ваш email</label>
                <input class="price-form__input" id="email" name="email" type="email">

                <label class="price-form__label" for="name">Введите ваш номер телефона</label>
                <input class="price-form__input" id="footer-phone" name="phone" type="phone">

                <button class="price-modal__btn">Отправить</button>
            </form>
        </div>
    </div>
</main>

