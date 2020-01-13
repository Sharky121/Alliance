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
<!--        <h1 class="main-title"></h1>-->

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
                        Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.
                        В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.
                    </p>
                <?php else: ?>
                    <p class="product-small_desc">
                        <?= $small_desc; ?>
                    </p>
                <?php endif; ?>

                <button class="btn">Скачать технические характеристики</button>
                <button class="btn">Задать вопрос</button>
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
        <p>Мы оставляем за собой право вносить изменения без предварительного уведомления.</p>

    </div>
</main>
