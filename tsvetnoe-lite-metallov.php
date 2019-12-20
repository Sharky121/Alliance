<!DOCTYPE html>
<html lang="ru">
<?php include ('parts/head.php') ?>

<body>
<?php include ('parts/header.php') ?>

<main>
    <div class="container">
        <h1 class="main-title">Оборудование для литья цветных металлов</h1>

        <ul class="breadcrumbs-list">
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="index.php">Главная</a>
            </li>
            <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
                <a class="breadcrumbs-list__link">Литье цветных металлов</a>
            </li>
        </ul>

        <!--        <ul class="category-list">-->
        <!--          --><?php //foreach ($cat as $key => $val): ?>
        <!--            <li class="category-list__item">--><?//= $val['title']; ?><!--</li>-->
        <!--          --><?php //endforeach; ?>
        <!--        </ul>-->

        <ul class="product-list">
            <?php foreach ($alum as $key => $val): ?>
                <li class="product-list__item">
                    <a class="product-list__link" href="<?= $val['link']; ?>">
                        <img class="product-list__img" src="<?= $val['img']; ?>" alt="<?= $val['title']; ?>">
                        <h4 class="product-list__title"><?= $val['title']; ?></h4>
                    </a>
                </li>
            <?php endforeach; ?>
        </ul>

    </div>

</main>

<?php include ('parts/footer.php') ?>
</body>

</html>
