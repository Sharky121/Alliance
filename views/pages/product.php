<?php
foreach ($data as $product) {
  $product_title =  $product['title'];
  $category_id = $product['cat_id'];
  $category_title = $product['cat_title'];
  $small_desc = $product['small_desc'];
  $content = $product['content'];
  $big_image_path = $product['big_image_path'];
  $image_path = $product['image_path'];
};
?>

<div class="container">
  <ul class="main-content__product-breadcrumbs breadcrumbs-list">
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="index.php">Главная</a>
    </li>
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="?view=products">Продукция</a>
    </li>
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="?view=catalog&cat=<?= $category_id ?>"><?= $category_title; ?></a>
    </li>
    <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
      <a class="breadcrumbs-list__link"><?= $product_title; ?></a>
    </li>
  </ul>
  <section class="main-content__product-info">
    <h2 class="visually-hidden">Информация о продукте</h2>
    <div class="product-wrapper product">
      <div class="product__img">
        <?php if (empty($big_image_path)): ?>
          <img src="<?= $image_path; ?>" alt="Изображение отсутствует">
        <?php else: ?>
          <img src="<?= $big_image_path; ?>" alt="<?= $product_title; ?>">
        <?php endif; ?>
      </div>
      <div class="product__info product-info">
        <h1 class="product-info__title"><?= $product_title; ?></h1>

        <p class="product-info__small_desc">
          <?php if (empty($small_desc)): ?>
            Наша компания по праву занимает место среди ведущих поставщиков оборудования в сфере переработки пластмасс и цветных металлов
          <?php else: ?>
            <?= $small_desc; ?>
          <?php endif; ?>
        </p>

        <!-- <button class="btn">Скачать технические характеристики</button>-->
        <a class="product-info__btn btn btn--green-border-hover" id="demo01" href="#animatedModal">Узнать цену</a>
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
  </section>
  <section class="main-content__product-videos product-videos">
    <h2 class="product-videos__title section__title title-bg">
      <span class="title-bg__bg-text">Видео</span>
      Наши работы
    </h2>

    <div class="product-videos__carousel owl-carousel owl-theme owl-carousel--product-videos">
      <?php foreach ($data as $video): ?>
        <div class="product-videos__item item">
          <a class="product-videos__link video-item" href="//www.youtube.com/embed/<?= $video['video_url']; ?>" data-rel="lightcase">
            <div class="video-item__background"></div>
            <svg class="video-item__ico" id="play" viewBox="0 0 100 100" width="60" height="60">
              <path class="stroke-solid"
                    fill="none"
                    stroke="white"
                    d="M49.9,2.5C23.6,2.8,2.1,24.4,2.5,50.4C2.9,76.5,24.7,98,50.3,97.5c26.4-0.6,47.4-21.8,47.2-47.7 C97.3,23.7,75.7,2.3,49.9,2.5">
              </path>
              <path class="stroke-dotted"
                    fill="none"
                    stroke="white"
                    d="M49.9,2.5C23.6,2.8,2.1,24.4,2.5,50.4C2.9,76.5,24.7,98,50.3,97.5c26.4-0.6,47.4-21.8,47.2-47.7 C97.3,23.7,75.7,2.3,49.9,2.5">
              </path>
              <path class="icon"
                    fill="white"
                    d="M38,69c-1,0.5-1.8,0-1.8-1.1V32.1c0-1.1,0.8-1.6,1.8-1.1l34,18c1,0.5,1,1.4,0,1.9L38,69z">
              </path>
            </svg>
            <img class="video-item__img" src="//img.youtube.com/vi/<?= $video['video_url']; ?>/mqdefault.jpg" width="320" height="180">
          </a>
          <h4 class="product-videos__item--title"><?= $video['video_title']; ?></h4>
        </div>
      <?php endforeach; ?>
    </div>
  </section>
  <section class="main-content__callback callback">
    <h2 class="callback__title section__title title-bg">
      <span class="title-bg__bg-text">Остались вопросы?</span>
      Напишите нам
    </h2>
    <p class="callback__text grey-text">Звоните по телефону <b>+7 (800) 222-48-13 (звонок бесплатный)</b>, <b>+7 (4912) 70-19-81</b> или заполните форму обратной связи</p>
    <form class="callback__form question-form">
      <input name="product_title" type="hidden" value="<?= $product_title; ?>">

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
      <textarea class="form-textarea form-textarea--grey" name="text" type="text" placeholder="Опишите вас вопрос"></textarea>

      <button class="form-btn form-btn--green" onclick="ym(33475678,'reachGoal','sendQuestion'); return true;">Отправить</button>
    </form>
  </section>
</div>

<!-- modal -->
<div id="animatedModal" class="price-modal">
  <div class="close-animatedModal">
    <img class="closebt" src="/img/closebt.svg">
  </div>

  <div class="modal-content">
    <h3 class="price-modal__title">Заполните форму и мы вышлем коммерческое предложение</h3>

    <form class="price-form">
      <input name="product_title" type="hidden" value="<?= $product_title; ?>">

      <label class="form-label" for="name">Представьтесь</label>
      <input class="form-input" id="name" name="name" type="text" placeholder="Иванов Александр Сергеевич" required>

      <label class="form-label" for="name">Введите ваш email</label>
      <input class="form-input" id="email" name="email" type="email" placeholder="email@email.ru" required>

      <label class="form-label" for="name">Введите ваш номер телефона</label>
      <input class="form-input" id="footer-phone" name="phone" type="phone" placeholder="+7 000 000 00 00" required>

      <button class="form-btn" onclick="ym(33475678,'reachGoal','getPrice'); return true;">Отправить</button>
    </form>
  </div>
</div>
