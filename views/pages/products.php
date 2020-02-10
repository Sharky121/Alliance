<?php

    $category_sql = "SELECT id, title, image_path FROM category";
    $category_list_res = mysqli_query($link,  $category_sql);
    $category_list = mysqli_fetch_all($category_list_res, MYSQLI_ASSOC);

?>

<main>
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

        <ul class="product-list">
          <?php foreach ($category_list as $key => $val): ?>
            <li class="product-list__item product-list__item--category">
              <a class="product-list__link" href="?view=catalog&cat=<?= $val['id'] ?>">
                <div class="product-list__box">
                  <img class="product-list__img" src="<?= $val['image_path']; ?>" alt="<?= $val['title']; ?>">
                </div>

                <h4 class="product-list__title"><?= $val['title']; ?></h4>
              </a>
            </li>
          <?php endforeach; ?>
      </ul>


        <h3 class="sub-title">Бесплатная консультация</h3>
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

</main>
