<header class="main-header <?php if (isset($_GET['view'])): ?>main-header--green<?php else: ?>js-main-header<?php endif; ?>">
  <div class="container main-header__container">
      <a class="logo main-header__logo"  href="/">
        <img class="logo__img" src="img/logo-tablet.svg" width="120" height="47" alt="Логотип ООО Альянс-пром">
        <span class="logo__text">Поставки на условиях <br> FOB и DDP</span>
      </a>

      <div class="address main-header__address main-header__address--warehouse">
        <a class="address__title">Наш склад</a>
        <a class="address__location" href="?view=contacts">г. Рязань, ул.Связи, 25 стр. 2</a>
      </div>

      <div class="address main-header__address main-header__address--office">
        <a class="address__title" href="mailto:sales@aliance-prom.ru">sales@aliance-prom.ru</a>
        <a class="address__location" href="?view=contacts">г. Рязань, ул. Петрова, 10 (офис)</a>
      </div>

      <div class="main-header__phone phone">
        <a class="phone__link" href="tel:+78002224813">
          +7 (800) 222-48-13
          <span class="phone__text">Звонок бесплатный</span>
        </a>

        <a class="phone__link" href="tel:+74912427047">
          +7 (4912) 70-19-81
          <span class="phone__text">пн-пт 10:00 до 18:00</span>
        </a>
      </div>

      <nav class="main-nav main-nav--closed main-nav--nojs">
        <button class="main-nav__toggle" type="button">
          <span class="visually-hidden">Открыть меню</span>
        </button>

        <div class="main-nav__wrapper">
          <ul class="main-nav__list site-list">
            <li class="site-list__item">
              <a class="site-list__link site-list__link--catalog" id="catalog">Каталог продукции</a>
            </li>
            <li class="site-list__item">
              <a class="site-list__link" href="?view=pressform">Пресс-формы</a>
            </li>
            <li class="site-list__item">
              <a class="site-list__link" href="?view=customer-service">Сервис</a>
            </li>
            <li class="site-list__item">
              <a class="site-list__link" href="?view=service">Услуги</a>
            </li>
            <li class="site-list__item">
              <a class="site-list__link" href="?view=news">Новости</a>
            </li>
            <li class="site-list__item">
              <a class="site-list__link" href="?view=video">Наши работы</a>
            </li>
<!--            <li class="site-list__item">-->
<!--              <a class="site-list__link" href="?view=articles">Полезное</a>-->
<!--            </li>-->
            <li class="site-list__item">
              <a class="site-list__link" href="?view=contacts">Контакты</a>
            </li>
          </ul>

          <ul class="main-nav__submenu submenu-list" style="display: none;">
            <li class="submenu-list__item">
              <a class="submenu-list__link" href="?view=catalog&amp;cat=1" class="sub-menu__link">Литье пластмасс</a>
            </li>
            <li class="submenu-list__item">
              <a class="submenu-list__link" href="?view=catalog&amp;cat=2" class="sub-menu__link">Литье цветных металлов</a>
            </li>
            <li class="submenu-list__item">
              <a class="submenu-list__link" href="?view=catalog&amp;cat=3" class="sub-menu__link">Периферийное оборудование</a>
            </li>
          </ul>
        </div>
      </nav>
  </div>
</header>
