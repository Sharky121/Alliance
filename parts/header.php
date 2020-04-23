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

        <div class="address warehouse-main-nav warehouse">
          <svg class="warehouse__ico" viewBox="0 0 399.3 399.3">
            <use xlink:href="#warehouse"></use>
          </svg>

          <div class="warehouse__text">
            <div class="address__row">
              <a class="address__mail" href="mailto:sales@aliance-prom.ru">Наш склад</a>
            </div>

            <div class="address__row">
              <a class="address__location" href="/" >г. Рязань, ул.Связи, 25 стр. 2</a>
            </div>
          </div>
        </div>

        <div class="address office-main-nav">
          <div class="address__row">
            <a class="address__mail" href="mailto:sales@aliance-prom.ru">sales@aliance-prom.ru</a>
          </div>

          <div class="address__row">
            <a class="address__location" href="/" >г. Рязань, ул. Петрова, 10 (офис)</a>
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
        <?php foreach ($categories as $val): ?>
          <li class="sub-menu__item">
            <a href="?view=catalog&cat=<?= $val['id'] ?>" class="sub-menu__link"><?= $val['title']; ?></a>
          </li>
        <?php endforeach; ?>
      </ul>
    </nav>
  </div>
</header>
