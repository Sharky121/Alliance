<?php
$link = @mysqli_connect(
//      'localhost',
//      'root',
//      '12345678',
//      'alliance'
  'p530117.mysql.ihc.ru',
  'p530117_alliance',
  'frutWYeStC',
  'p530117_alliance'
) or die('Ошибка: Невозможно подключиться к MySQL '. mysqli_connect_error());
@mysqli_set_charset($link, "utf8");

$sql = "SELECT id, title, author, created_at, news_date, content, small_content FROM news ORDER BY news_date DESC LIMIT 4";
$result = mysqli_query($link, $sql) or die(mysqli_error($link));
$data = mysqli_fetch_all($result, MYSQLI_ASSOC);

foreach ($data as $val) {
    $news_link =  $val['id'];
    $news_date = $val['news_date'];
}

$day = date("d", strtotime($news_date));
?>

<h1 class="visually-hidden">Альянс-пром</h1>

<section class="index__section-header section-header">
  <div class="container section-header__container">
    <h2 class="section-header__title">15 лет на рынке оборудования<br> по переработке пластмасс и цветных металлов</h2>
    <p class="section-header__text">Тщательный выбор поставщиков позволил нам подобрать для Вас оптимальную линейку оборудования по соотношению цена-качество</p>
    <a class="btn section-header__btn" href="?view=products">Наше оборудование</a>
    <p class="section-header__subtitle">
      Официальный представитель Компании <b>NINGBO HAIXING MACHINERY MANUFACTURING CO., LTD</b> в России и СНГ</span>
    </p>
  </div>
</section>

<section class="section section-features">
  <div class="container">
    <h2 class="section__title title-bg">
      <span class="title-bg__bg-text">Преимущества</span>
      Наши возможности
    </h2>

    <ul class="features-list">
      <li class="features-list__item features-item">
        <a class="features-item__link" href="?view=catalog&cat=1">
          <div class="features-item__circle">
            <img class="features-item__img" src="/img/recycle-sign.svg" width="32" height="32" alt="Горизонтальные и вертикальные термопластавтоматы">
          </div>
          <h3 class="features-item__title">Горизонтальные и вертикальные термопластавтоматы</h3>
          <p class="features-item__text">Оборудование под маркой Titan и Сhrome для литья пластмасс и серии Lanson-Alliance для литья цветных металлов под давлением</p>
        </a>
      </li>
      <li class="features-list__item features-item">
        <a class="features-item__link" href="?view=pressform">
          <div class="features-item__circle">
            <img class="features-item__img" src="/img/power-press.svg" width="32" height="32" alt="Пресс-формы">
          </div>
          <h3 class="features-item__title">Пресс-формы</h3>
          <p class="features-item__text">Открытие производственного участка под ключ и реализация Ваши проектов! Конструирование и моделировании пресс-форм</p>
        </a>
      </li>
      <li class="features-list__item features-item">
        <a class="features-item__link" href="?view=catalog&cat=3">
          <div class="features-item__circle">
            <img class="features-item__img" src="/img/gears.svg" width="32" height="32" alt="Периферийное оборудование">
          </div>
          <h3 class="features-item__title">Периферийное оборудование</h3>
          <p class="features-item__text">Автоматизация и подготовка производства ключевой момент для успешного ведения бизнеса и сокращения затрат времени</p>
        </a>
      </li>
      <li class="features-list__item features-item">
        <a class="features-item__link">
          <div class="features-item__circle">
            <img class="features-item__img" src="/img/waste-plastic.svg" width="32" height="32" alt="Выдувное оборудование">
          </div>
          <h3 class="features-item__title">Выдувное оборудование</h3>
          <p class="features-item__text">Мы предлагаем Вам готовые решения для производства пластиковой тары различного назначения</p>
        </a>
      </li>
      <li class="features-list__item features-item">
        <a class="features-item__link">
          <div class="features-item__circle">
            <img class="features-item__img" src="/img/computer.svg" width="32" height="32" alt="Построение системы управления производством">
          </div>
          <h3 class="features-item__title">Построение системы управления производством</h3>
          <p class="features-item__text">Единая сеть, что позволяет диагностировать и управлять работой оборудования с помощью сетей Ethernet</p>
        </a>
      </li>
      <li class="features-list__item features-item">
        <a class="features-item__link">
          <div class="features-item__circle">
            <img class="features-item__img" src="/img/print.svg" width="32" height="32" alt="Экструзионное оборудование">
          </div>
          <h3 class="features-item__title">Экструзионное оборудование</h3>
          <p class="features-item__text">Организация бизнеса в сфере экструзии перспективное и рентабельное направление. Выбор надежного поставщика одна из главных задач в ведении данного бизнеса</p>
        </a>
      </li>
      <li class="features-list__item features-item">
        <a class="features-item__link" href="?view=catalog&cat=2">
          <div class="features-item__circle">
            <img class="features-item__img" src="/img/aluminum.svg" width="32" height="32" alt="Литье цветных металлов и сплавов под давлением">
          </div>
          <h3 class="features-item__title">Литье цветных металлов и сплавов под давлением</h3>
          <p class="features-item__text">Альянс-Пром эксклюзивный представитель крупнейшего мирового производителя оборудования для литья под давлением цветных металлов и сплавов</p>
        </a>
      </li>
      <li class="features-list__item features-item">
        <a class="features-item__link">
          <div class="features-item__circle">
            <img class="features-item__img" src="/img/medal.svg" width="32" height="32" alt="Цена - качество">
          </div>
          <h3 class="features-item__title">Цена - качество</h3>
          <p class="features-item__text">Предлагаем наиболее оптимальную линейку оборудования по соотношению цена-качество, которую оценили не только ведущие российские производители, но и такие мировые гиганты как Toyota  Motor Corporation</p>
        </a>
      </li>
      <li class="features-list__item features-item">
        <a class="features-item__link">
          <div class="features-item__circle">
            <img class="features-item__img" src="/img/iso.svg" width="32" height="32" alt="Сертифицикация и стандарты">
          </div>
          <h3 class="features-item__title">Сертифицикация и стандарты</h3>
          <p class="features-item__text">Машины произведены с учетом всех основных требований российских производителей и сертифицированы ISO 9001 и ISO14001, а так же имеют сертификат европейского стандарта качества</p>
        </a>
      </li>
    </ul>
  </div>
</section>

<section class="section about">
  <div class="container about__container">
<!--    <video width="480" controls poster="">-->
<!--      <source src="/video/video.mp4" type="video/mp4">-->
<!--      <source src="/video/video.ogv" type="video/ogg">-->
<!--      <source src="/video/video.webm" type="video/webm">-->
<!--      Your browser doesn't support HTML5 video tag.-->
<!--    </video>-->
    <img class="about__img" src="/img/products/prod1.png" alt="">

    <div>
      <h2 class="section__title title-bg title-bg--about">Лучшее оборудование</h2>
      <p class="about__text">Оборудование под маркой Titan и Сhrome для литья пластмасс и серии L.K.  MACHINERY MANUFACTURING CO., LTD для литья цветных металлов под давлением.</p>

      <ul class="about__list">
        <li class="about__item">Ведущий поставщик оборудования в сфере переработки пластмасс и цветных металлов</li>
        <li class="about__item">Предлагаем широкий спектр периферии ведущих заводов Китая</li>
        <li class="about__item">Оптимальная линейка оборудования по соотношению цена-качество</li>
        <li class="about__item">Реализовываем проекты по производству технологической оснастки (пресс-форм)</li>
      </ul>
    </div>
  </div>
</section>

<section class="section section-works">
  <div class="container">
    <h2 class="section__title title-bg">
      <span class="title-bg__bg-text">Видео</span>
      Наши последние работы
    </h2>

    <div class="section-works__wrapper">
      <div class="owl-carousel owl-theme owl-carousel--works">
        <div class="item">
          <a href="https://www.youtube.com/embed/fxqjarZ1mx8?autoplay=1" data-rel="lightcase">
            <svg class="item__ico" viewBox="0 0 100 100" width="60" height="60">
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
          </a>
          <img src="/img/youTube_caption1.jpg" class="img-responsive" alt="Машина для литья под давлением Lanson TD218 (без автоматизации)">
        </div>
        <div class="item">
          <a href="https://www.youtube.com/embed/FDExONHumL4?autoplay=1" data-rel="lightcase">
            <svg class="item__ico" viewBox="0 0 100 100" width="60" height="60">
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
          </a>
          <img src="/img/youTube_caption2.jpg" class="img-responsive" alt="Машина ЛПД LS400 и Пресс-форма">
        </div>
        <div class="item">
          <a href="https://www.youtube.com/embed/fHPaLN1MCsw?autoplay=1" data-rel="lightcase">
            <svg class="item__ico" viewBox="0 0 100 100" width="60" height="60">
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
          </a>
          <img src="/img/youTube_caption2.jpg" class="img-responsive" alt="Машина для литья под давлением 400 тонн (с контролем параметров литья в реальном времени)">
        </div>
      </div>

      <div class="image-mock">
        <img src="/img/mock.png" class="img-responsive center-block" alt="Mock">
      </div>

      <a class="section-works__btn btn btn--green-border-hover" href="?view=video">Все работы</a>
    </div>
  </div>
</section>

<section class="section section-news">
  <div class="container">
    <h2 class="section__title title-bg">
      <span class="title-bg__bg-text">Новости</span>
      Новости в мире пластмасс
    </h2>

    <div class="section-news__wrapper">
      <ul class="news-list">
        <?php foreach($data as $news_item): ?>
          <li class="news-list__item news-item news-item--index">
            <div class="news-list__inner">
              <div class="news__date">
                <?= date("d", strtotime($news_item['news_date']))  ?><br>
                <?= get_month($news_item['news_date']); ?>
              </div>

              <h3 class="news__title">
                <a href="?view=news-page&id=<?= $news_item['id'] ?>" class="news__link"><?= $news_item['title']; ?></a>
              </h3>

              <p class="news__meta">
                <svg class="news__img" viewBox="0 0 482.9 482.9" width="16" height="16">
                  <use xlink:href="#avatar"></use>
                </svg>
                <?= $news_item['author']; ?>
              </p>

              <?= cutText($news_item['small_content'], $news_item['id'], 90, 'text'); ?>
            </div>
          </li>
        <?php endforeach; ?>
      </ul>

      <a class="btn btn--green-border-hover" href="?view=news">Все новости</a>
    </div>
  </div>
</section>

<section class="section-map" id="section-map">
  <div class="container">
    <h2 class="section__title title-bg">
      <span class="title-bg__bg-text">Карта</span>
      Наше расположение
    </h2>
  </div>
  <div class="map" id="map"></div>
</section>
