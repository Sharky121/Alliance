<?php

    if (isset($_GET['id'])) {
        $id = intval($_GET['id']);
    }

    $product_sql = "SELECT p.title, c.id as cat_id, c.title as cat_title, small_desc, content
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
    };

?>

<main>
    <div class="container">
        <h1 class="main-title"><?= $product_title; ?>

        </h1>

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

        <p><?= $small_desc; ?></p>

        <div><?= $content; ?></div>

    </div>
</main>
