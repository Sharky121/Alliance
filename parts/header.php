<?php
  include ('parts/data.php');

  if (isset($_GET['cat'])) {
      $category_url = $_GET['cat'];
  }

  $category_sql = 'SELECT id, title FROM category ORDER BY id ASC';
  $category_list_res = mysqli_query($link, $category_sql);
  $category_list = mysqli_fetch_all($category_list_res, MYSQLI_ASSOC);

?>

<header class="main-header <?php if (isset($_GET['view'])): ?>main-header--green<?php else: ?>js-main-header<?php endif; ?>">
    <div class="container">
        <nav class="main-nav">
            <div class="main-nav__wrapper">
                <a href="/" class="logo">
                    <svg class="logo__img" viewBox="0 0 105000 41000">
                        <use xlink:href="#logo"></use>
                    </svg>
                    <span class="logo__text">Поставки на условиях <br> FOB и DDP</span>
                </a>

                <div class="address address__main-nav">
                    <div class="address__row">
                        <a class="address__mail" href="mailto:sales@aliance-prom.ru">sales@aliance-prom.ru</a>
                    </div>

                    <div class="address__row">
                        <a class="address__location" href="/" >г. Рязань, 198км Окружной автодороги, 6</a>
                    </div>
                </div>

                <div class="phone">
                    <div class="phone__row">
                        <a class="phone__link" href="tel:+78002224813">+7 (800) 222-48-13</a>
                        <span class="phone__text">Звонок бесплатный</span>
                    </div>
                    <div class="phone__row">
                        <a class="phone__link" href="tel:+74912427047">+7 (4912) 70-19-81</a>
                        <span class="phone__text">пн-пт 10:00 до 18:00</span>
                    </div>
                </div>
            </div>


            <ul class="main-menu">
                <li class="main-menu__item">
                    <a class="main-menu__link" id="catalog">Каталог продукции</a>
                </li>

                <li class="main-menu__item">
                  <a class="main-menu__link" href="?view=pressform">Пресс-формы</a>
                </li>
<!---->
<!--                <li class="main-menu__item">-->
<!--                  <a class="main-menu__link" id="demo02" href="#modal03">Запасные части</a>-->
<!--                </li>-->

                <li class="main-menu__item">
                    <a class="main-menu__link" href="?view=service">Услуги</a>
                </li>

                <li class="main-menu__item main-menu__item--active">
                    <a class="main-menu__link" href="?view=news">Новости</a>
                </li>

                <li class="main-menu__item">
                    <a class="main-menu__link" href="?view=video">Наши работы</a>
                </li>

                <li class="main-menu__item">
                    <a class="main-menu__link" href="/#section-map" >Контакты</a>
                </li>
            </ul>

            <ul class="sub-menu">
                <?php foreach ($category_list as $key => $val): ?>
                <li class="sub-menu__item">
                    <a href="?view=catalog&cat=<?= $val['id'] ?>" class="sub-menu__link"><?= $val['title']; ?></a>
                </li>
                <?php endforeach; ?>
            </ul>

        </nav>
    </div>
</header>
