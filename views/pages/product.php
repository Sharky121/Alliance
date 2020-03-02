<?php
    foreach ($product_info as $val) {
        $product_title =  $val['title'];
        $category_id = $val['cat_id'];
        $category_title = $val['cat_title'];
        $small_desc = $val['small_desc'];
        $content = $val['content'];
        $big_image_path = $val['big_image_path'];
        $image_path = $val['image_path'];
    };
?>

<div class="container">
    <ul class="breadcrumbs-list products-breadcrumbs">
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

    <div class="product-wrapper">
        <div class="product__column product__column--left">
            <?php if (empty($big_image_path)): ?>
                <img class="product-image" src="<?= $image_path; ?>" alt="Изображение отсутствует">
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
            
            <div>
<!--            <button class="btn">Скачать технические характеристики</button>-->
                <button class="btn" id="demo01" href="#animatedModal">Узнать цену</button>
            </div>

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

    <h3 class="sub-title">Видео наших работ</h3>

    <div class="owl-carousel owl-theme owl-carousel--works product__owl-carousel">
        <?php foreach ($product_video as $val): ?>
          <div class="item">
            <lite-youtube class="video-list__box" videoid="<?=$val['video_url']; ?>" style="background-image: url('https://i.ytimg.com/vi/ogfYd705cRs/hqdefault.jpg');">
              <div class="lty-playbtn"></div>
            </lite-youtube>

            <h4 class="video-list__title"><?= $val['video_title']; ?></h4>
          </div>
        <?php endforeach; ?>
    </div>


    <h3 class="sub-title">Остались вопросы?</h3>
    <p class="grey-text">Звоните по телефону +7 (800) 222-48-13 (звонок бесплатный), +7 (4912) 70-19-81 или заполните форму обратной связи</p>

    <form class="question-form">
      <input name="product_title" type="hidden" value="<?= $product_title; ?>">

      <div class="form-group question-form__form-group">
        <p>
          <label class="form-label form-label--grey" for="name">Введите ваше имя</label>
          <input class="form-input form-input--grey" id="name" name="name" type="text" placeholder="Как вас зовут?">
        </p>

        <p>
          <label class="form-label form-label--grey" for="name">Введите ваш email</label>
          <input class="form-input form-input--grey" id="email" name="email" type="email" placeholder="email@email.ru">
        </p>

        <p>
          <label class="form-label form-label--grey" for="name">Введите ваш номер телефона</label>
          <input class="form-input form-input--grey" id="footer-phone" name="phone" type="phone" placeholder="+7 000 000 00 00">
        </p>
      </div>

      <label class="form-label form-label--grey" for="text">Ваш вопрос</label>
      <textarea class="form-textarea form-textarea--grey" name="text" type="text" placeholder="Опишите вас вопрос"></textarea>

      <button class="form-btn form-btn--green">Отправить</button>
    </form>

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

            <label class="form-label" for="name">Введите ваше имя</label>
            <input class="form-input" id="name" name="name" type="text">

            <label class="form-label" for="name">Введите ваш email</label>
            <input class="form-input" id="email" name="email" type="email">

            <label class="form-label" for="name">Введите ваш номер телефона</label>
            <input class="form-input" id="footer-phone" name="phone" type="phone">

            <button class="form-btn">Отправить</button>
        </form>
    </div>
</div>


