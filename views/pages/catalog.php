<?php
  $category_name = $data[0]['cat_title'];
  $category_id = $data[0]['category_id'];
?>
<div class="container">
  <h1 class="main-title"><?= $category_name ?></h1>

  <ul class="breadcrumbs-list">
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="index.php">Главная</a>
    </li>
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="?view=products">Продукция</a>
    </li>
    <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
      <a class="breadcrumbs-list__link"><?= $category_name ?></a>
    </li>
  </ul>

  <?php if ($category_id === '2'): ?>
    <p class="text-products quote">Альянс-Пром эксклюзивный представитель крупнейшего мирового производителя оборудования для литья под давлением цветных металлов и сплавов.
      Предлагаем наиболее оптимальную линейку оборудования по соотношению цена-качество, которую оценили не только ведущие российские производители, но и такие мировые гиганты как <b>Toyota Motor Corporation.</b> </p>
    <p class="text-products">Машины произведены с учетом всех основных требований российских производителей и сертифицированы <b>ISO 9001</b> и <b>ISO14001</b>, а так же имеют <b>сертификат европейского стандарта качества.</b>
    </p>
  <?php elseif ($category_id == '3'): ?>
    <p class="text-products quote">
      <b>Группа компаний «Альянс»</b> занимается поставкой на российский рынок качественного периферийного оборудования.
      Компании - производители, с которыми мы сотрудничаем, обеспечивают выпуск оборудования европейского класса надежности. Благодаря строгому контролю, осуществляемому на всех стадиях производства, поставляемое оборудование полностью отвечает мировым стандартам качества.
    </p>

    <p class="text-products">Продуманный выбор периферийного оборудования поможет оптимизировать затраты производства: уменьшить количество потерь материала, брака в результате воздействия человеческого фактора, сократить число задействованного в производстве персонала за счет возможностей автоматизации.</p>

    <p class="text-products">Наш квалифицированный персонал, имеющий опыт работы с данным оборудованием, поможет разработать наиболее экономически выгодную и технически обусловленную производственную схему, произвести монтаж, пуско-наладку, гарантийное и постгарантийное обслуживание оборудования.</p>
  <?php endif; ?>

  <div class="products">
    <ul class="product__list">
      <?php foreach ($data as $category): ?>
        <li class="product__item products-item">
          <a class="product-item__link" href="?view=product&id=<?= $category['id'] ?>">
            <img class="product-item__img" src="<?= $category['image_path']; ?>" alt="<?= $category['title']; ?>">
            <h4 class="product-item__title"><?= $category['title']; ?></h4>
          </a>
        </li>
      <?php endforeach; ?>
    </ul>
  </div>
</div>
