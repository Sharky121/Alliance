<main>
    <div class="container">
        <h1 class="main-title">
            <?php getCategoryName($category_list, $category_url); ?>
        </h1>

        <ul class="breadcrumbs-list">
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="index.php">Главная</a>
            </li>
            <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
                <a class="breadcrumbs-list__link"><?php getCategoryName($category_list, $category_url); ?></a>
            </li>
        </ul>

        <!--        <ul class="category-list">-->
        <!--          --><?php //foreach ($cat as $key => $val): ?>
        <!--            <li class="category-list__item">--><?//= $val['title']; ?><!--</li>-->
        <!--          --><?php //endforeach; ?>
        <!--        </ul>-->

        <ul class="product-list">
            <?php
                $catalog_sql = "SELECT id, title,image_path FROM products WHERE category_id = '$category_url'";
                $catalog_list_res = mysqli_query($link, $catalog_sql);
                $catalog_list = mysqli_fetch_all($catalog_list_res, MYSQLI_ASSOC);
            ?>

            <?php foreach ($catalog_list as $key => $val): ?>
                <li class="product-list__item peripheral">
                    <a class="product-list__link" href="?view=product&id=<?= $val['id'] ?>">
                        <img class="product-list__img" src="<?= $val['image_path']; ?>" alt="<?= $val['title']; ?>">
                        <h4 class="product-list__title"><?= $val['title']; ?></h4>
                    </a>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</main>



