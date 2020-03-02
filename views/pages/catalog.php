<?php
    $catalog_sql = "SELECT id, title,image_path FROM products WHERE category_id = '$category_url'";
    $catalog_list_res = mysqli_query($link, $catalog_sql);
    $catalog_list = mysqli_fetch_all($catalog_list_res, MYSQLI_ASSOC);
?>

<main>
    <div class="container">
        <h1 class="main-title">
            <?php getCategoryName($category_list, $category_url); ?>
        </h1>

        <ul class="breadcrumbs-list">
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="index.php">Главная</a>
            </li>
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="?view=products">Продукция</a>
            </li>
            <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
                <a class="breadcrumbs-list__link"><?php getCategoryName($category_list, $category_url); ?></a>
            </li>
        </ul>

        <?php if ($category_url === '2'): ?>
          <p class="text-products quote">Альянс-Пром эксклюзивный представитель крупнейшего мирового производителя оборудования для литья под давлением цветных металлов и сплавов.
          Предлагаем наиболее оптимальную линейку оборудования по соотношению цена-качество, которую оценили не только ведущие российские производители, но и такие мировые гиганты как <b>Toyota Motor Corporation.</b> </p>
          <p class="text-products">Машины произведены с учетом всех основных требований российских производителей и сертифицированы <b>ISO 9001</b> и <b>ISO14001</b>, а так же имеют <b>сертификат европейского стандарта качества.</b>
          </p>
        <?php elseif ($category_url === '3'): ?>
          <p class="text-products quote">
            <b>Группа компаний «Альянс»</b> занимается поставкой на российский рынок качественного периферийного оборудования.
            Компании - производители, с которыми мы сотрудничаем, обеспечивают выпуск оборудования европейского класса надежности. Благодаря строгому контролю, осуществляемому на всех стадиях производства, поставляемое оборудование полностью отвечает мировым стандартам качества.
          </p>

          <p class="text-products">Продуманный выбор периферийного оборудования поможет оптимизировать затраты производства: уменьшить количество потерь материала, брака в результате воздействия человеческого фактора, сократить число задействованного в производстве персонала за счет возможностей автоматизации.</p>

          <p class="text-products">Наш квалифицированный персонал, имеющий опыт работы с данным оборудованием, поможет разработать наиболее экономически выгодную и технически обусловленную производственную схему, произвести монтаж, пуско-наладку, гарантийное и постгарантийное обслуживание оборудования.</p>
       
        <?php endif; ?>
        <!--        <ul class="category-list">-->
        <!--          --><?php //foreach ($cat as $key => $val): ?>
        <!--            <li class="category-list__item">--><?//= $val['title']; ?><!--</li>-->
        <!--          --><?php //endforeach; ?>
        <!--        </ul>-->

        <ul class="product-list">
            <?php foreach ($catalog_list as $key => $val): ?>
                <li class="product-list__item peripheral">
                    <a class="product-list__link" href="?view=product&id=<?= $val['id'] ?>">
                        <div class="product-list__box">
                            <img class="product-list__img" src="<?= $val['image_path']; ?>" alt="<?= $val['title']; ?>">
                        </div>

                        <h4 class="product-list__title"><?= $val['title']; ?></h4>
                    </a>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</main>
