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
    <p class="text-products quote">Альянс-Пром эксклюзивный представитель крупнейшего мирового производителя оборудования для литья под давлением цветных металлов и сплавов - <b>L.K. MACHINERY MANUFACTURING CO., LTD.</b>
      Предлагаем наиболее оптимальную линейку оборудования по соотношению цена-качество, которую оценили не только ведущие российские производители, но и такие мировые гиганты как <b>Toyota Motor Corporation.</b>
    </p>
    <p class="text-products">
      Машины произведены с учетом всех основных требований российских производителей и сертифицированы <b>ISO 9001</b> и <b>ISO14001</b>, а так же имеют <b>сертификат европейского стандарта качества.</b>
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
      <?php if ($category_id === '2'): ?>
        <li class="product__item products-item">
          <a class="product-item__link" id="openComplexPriceModal" href="#animatedModal">
            <img class="product-item__img" src="img/catalog/complex.png">
            <h4 class="product-item__title">Комплексные решения</h4>
          </a>
        </li>
      <?php endif; ?>
      <?php foreach ($data as $category): ?>
        <li class="product__item products-item">
          <a class="product-item__link" href="?view=product&id=<?= $category['id'] ?>">
            <img class="product-item__img" src="<?= $category['image_path']; ?>" alt="<?= $category['title']; ?>">
            <h4 class="product-item__title"><?= $category['title']; ?></h4>
            <?php if ($category['price'] !== NULL): ?>
              <p class="product-item__price">Цена от <?= number_format($category['price'], 0, '', ' '); ?>$</p>
            <?php endif; ?>
          </a>
        </li>
      <?php endforeach; ?>
    </ul>
  </div>
</div>

<?php if ($category_id === '2'): ?>
<div id="animatedModal" class="complex-price-modal">
  <div class="close-animatedModal">
    <img class="closebt" src="/img/closebt.svg">
  </div>

  <div class="modal-content">
    <h3 class="price-modal__title">Заполните форму и мы вышлем коммерческое предложение</h3>

    <form class="price-form">
      <input name="product_title" type="hidden" value="complex">

      <label class="form-label" for="name">Представьтесь</label>
      <input class="form-input" id="name" name="name" type="text" placeholder="Ваше имя" required>

      <label class="form-label" for="email">Введите ваш email</label>
      <input class="form-input" id="email" name="email" type="email" placeholder="Ваша электронная почта" required>

      <label class="form-label" for="phone">Введите ваш номер телефона</label>
      <input class="form-input" id="phone" name="phone" type="tel" placeholder="Номер телефона" required>

      <button class="form-btn" onclick="ym(33475678,'reachGoal','getPriceComplex'); return true;">Получить цену</button>
    </form>
  </div>
</div>
<?php endif; ?>
