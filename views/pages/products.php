<div class="container">
  <h1 class="main-title">Продукция</h1>

  <ul class="breadcrumbs-list">
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="index.php">Главная</a>
    </li>
    <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
      <a class="breadcrumbs-list__link">Продукция</a>
    </li>
  </ul>

  <p>Компания Альянс-Пром официальными представителями известных мировых производителей оборудования для литья цветных металлов и пластмасс под давлением, включая пресс-формы, роботизацию и периферию:</p>

  <ul>
    <li>L.K.  MACHINERY MANUFACTURING CO., LTD</li>
    <li>NINGBO HAIXING MACHINERY MANUFACTURING CO., LTD</li>
    <li>WENSUI INTELLIGENT EQUIPMENT GROUP</li>
  </ul>

  <p>Продукция заводов, которые мы представляем, произведена с учетом всех основных требований российских производителей и сертифицирована ISO 9001 и ISO14001, а так же имеет сертификаты европейского стандарта качества.</p>
  <p>Поставляем оборудование на условиях FOB, DDP и по агентскому контракту. На любых условиях поставки пуско-наладочные работы за счет завода-производителя! Контроллеры только с качественным русским техническим переводом.</p>
  <p>Наши специалисты имеют 20-ти летний  опыт запуска производственных линий  с нулевого уровня, включая этапы проектирования, установки, пуско-наладки, что гарантирует надежное и плодотворное сотрудничество с нашей компанией.</p>
  <p>Осуществляем гарантийное и постгарантийное обслуживание, тех.поддержку 24/7, обеспечиваем склад запасных частей и комплектующих.</p>
  <p>Наша задача не просто продать, но обеспечить российские предприятия качественным, долговечным, технологичным оборудованием по оптимальной цене. Качество – залог долгосрочного сотрудничества!</p>

  <ul class="product-list">
    <?php foreach ($data as $catalog_item): ?>
      <li class="product-list__item product-list__item--category">
        <a class="product-list__link" href="?view=catalog&cat=<?= $catalog_item['id'] ?>">
          <div class="product-list__box">
            <img class="product-list__img" src="<?= $catalog_item['image_path']; ?>" alt="<?= $catalog_item['title']; ?>">
          </div>

          <h4 class="product-list__title"><?= $catalog_item['title']; ?></h4>
        </a>
      </li>
    <?php endforeach; ?>
  </ul>

  <h3 class="sub-title">Бесплатная консультация</h3>
  <p class="grey-text">Звоните по телефону +7 (800) 222-48-13 (звонок бесплатный), +7 (4912) 70-19-81 или заполните форму обратной связи</p>

  <form class="question-form">
    <input name="product_title" type="hidden" value="<?= $catalog_item['title']; ?>">

    <div class="form-group question-form__form-group">
      <p>
        <label class="form-label form-label--grey" for="name">Представьтесь</label>
        <input class="form-input form-input--grey" id="name" name="name" type="text" placeholder="Иванов Александр Сергеевич" required>
      </p>

      <p>
        <label class="form-label form-label--grey" for="name">Введите ваш email</label>
        <input class="form-input form-input--grey" id="email" name="email" type="email" placeholder="email@email.ru" required>
      </p>

      <p>
        <label class="form-label form-label--grey" for="name">Введите ваш номер телефона</label>
        <input class="form-input form-input--grey" id="footer-phone" name="phone" type="phone" placeholder="+7 000 000 00 00" required>
      </p>
    </div>

    <label class="form-label form-label--grey" for="text">Ваш вопрос</label>
    <textarea class="form-textarea form-textarea--grey" name="text" type="text" placeholder="Опишите вас вопрос" required></textarea>

    <button class="form-btn form-btn--green" onclick="ym(33475678,'reachGoal','sendQuestion'); return true;">Отправить</button>
  </form>
</div>


