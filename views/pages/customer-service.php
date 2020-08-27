<div class="container customer-service">
  <ul class="breadcrumbs-list">
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="index.php">Главная</a>
    </li>
    <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
      <a class="breadcrumbs-list__link">Сервисная служба</a>
    </li>
  </ul>

  <h1 class="visually-hidden">Сервисная служба</h1>

  <section class="customer-service__section">
    <h2 class="section__title title-bg">
      <span class="title-bg__bg-text">Услуги</span>
      Наша сервисная служба
    </h2>

    <ul class="customer-service-list">
      <li class="customer-service-list__item customer-service-item">
        <a class="customer-service-item__link">
          <div class="customer-service-item__circle">
            <img class="customer-service-item__img" src="/img/consulting.svg" width="32" height="32" alt="Техническое консультирование при разработке проектов">
          </div>
          <h3 class="customer-service-item__title">Техническое консультирование при разработке проектов</h3>
        </a>
      </li>
      <li class="customer-service-list__item customer-service-item">
        <a class="customer-service-item__link">
          <div class="customer-service-item__circle">
            <img class="customer-service-item__img" src="/img/gears.svg" width="32" height="32" alt="Монтажные и шеф-монтажные работы">
          </div>
          <h3 class="customer-service-item__title">Монтажные и шеф-монтажные работы</h3>
        </a>
      </li>
      <li class="customer-service-list__item customer-service-item">
        <a class="features-item__link">
          <div class="customer-service-item__circle">
            <img class="customer-service-item__img" src="/img/wrench.svg" width="32" height="32" alt="Пуско-наладочные работы термопластавтоматов и машин литья цветных металлов под давлением любых марок">
          </div>
          <h3 class="customer-service-item__title">Пуско-наладочные работы термопластавтоматов и машин литья цветных металлов под давлением любых марок</h3>
        </a>
      </li>
      <li class="customer-service-list__item customer-service-item">
        <a class="customer-service-item__link">
          <div class="customer-service-item__circle">
            <img class="customer-service-item__img" src="/img/robot.svg" width="32" height="32" alt="Запуск производственных линий с нулевого уровня">
          </div>
          <h3 class="customer-service-item__title">Запуск производственных линий с нулевого уровня</h3>
        </a>
      </li>
      <li class="customer-service-list__item customer-service-item">
        <a class="customer-service-item__link">
          <div class="customer-service-item__circle">
            <img class="customer-service-item__img" src="/img/inspection.svg" width="32" height="32" alt="Проведение плановых технических осмотров (ТО)">
          </div>
          <h3 class="customer-service-item__title">Проведение плановых технических осмотров (ТО)</h3>
        </a>
      </li>
      <li class="customer-service-list__item customer-service-item">
        <a class="customer-service-item__link">
          <div class="customer-service-item__circle">
            <img class="customer-service-item__img" src="/img/meter.svg" width="32" height="32" alt="Диагностика технического состояния Оборудования с целью выявления неисправностей и определения причины их возникновения">
          </div>
          <h3 class="customer-service-item__title">Диагностика технического состояния оборудования с целью выявления неисправностей и определения причины их возникновения</h3>
        </a>
      </li>
      <li class="customer-service-list__item customer-service-item">
        <a class="customer-service-item__link" href="?view=catalog&amp;cat=2">
          <div class="customer-service-item__circle">
            <img class="customer-service-item__img" src="/img/recovery.svg" width="32" height="32" alt="Мероприятия по восстановлению работоспособности">
          </div>
          <h3 class="customer-service-item__title">Мероприятия по восстановлению работоспособности</h3>
        </a>
      </li>
    </ul>
  </section>
  <section class="customer-service__section customer-service-consult">
    <h2 class="section__title title-bg">
      <span class="title-bg__bg-text">Вопросы</span>
      Запрос на техническую консультацию
    </h2>
    <p class="grey-text">Звоните по телефону +7 (800) 222-48-13 (звонок бесплатный), +7 (4912) 70-19-81 или заполните форму обратной связи</p>
    <form class="question-form customer-service-consult__question-form">
      <input name="product_title" type="hidden" value="service">
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
      <button class="question-form__btn form-btn form-btn--green" onclick="ym(33475678,'reachGoal','sendQuestion'); return true;">Отправить</button>
    </form>
  </section>
  <section class="customer-service__section supplied-equipment">
    <h2 class="section__title title-bg">
      <span class="title-bg__bg-text">Оборудование</span>
      Поставляем
    </h2>

    <ul class="supplied-equipment__list">
      <li class="supplied-equipment__item supplied-equipment-item">
        <div class="supplied-equipment-item__img">
          <img src="/img/products/prod1.png">
        </div>
        <p class="supplied-equipment-item__title">
          Высокотехнологичные термопластавтоматы марок <b>Titan GL</b> (с насосом переменной производительности) и <b>Chrome GL</b> (с сервоприводом), от 32 до 2000 тонн усилия.
          Завод-производитель <b>NINGBO HAIXING MACHINERY MANUFACTURING CO., LTD</b></p>
        <a class="supplied-equipment-item__btn btn btn--green-border-hover" href="?view=catalog&amp;cat=1">Перейти</a>
      </li>
      <li class="supplied-equipment__item supplied-equipment-item">
        <div class="supplied-equipment-item__img">
          <img src="/img/products/impress-big.png">
        </div>

        <p class="supplied-equipment-item__title">
          Машины для литья цветных металлов и сплавов крупнейшего мирового производителя <b>L.K. MACHINERY MANUFACTURING CO., LTD</b> с оборотом компании 550 миллиардов долларов;
        </p>
        <a class="supplied-equipment-item__btn btn btn--green-border-hover" href="?view=catalog&amp;cat=2">Перейти</a>
      </li>
      <li class="supplied-equipment__item supplied-equipment-item">
        <div class="supplied-equipment-item__img">
          <img src="/img/products/wensui.jpg">
        </div>
        <p class="supplied-equipment-item__title">Периферийное оборудование, роботизацию различной сложности и функциональности <b>WENSUI INTELLIGENT EQUIPMENT GROUP</b></p>
        <a class="supplied-equipment-item__btn btn btn--green-border-hover" href="?view=catalog&amp;cat=3">Перейти</a
      </li>
    </ul>
  </section>
</div>
