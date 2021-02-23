<?php
/**
 * @var array $data
 */

foreach ($data as $val) {
  $news_title =  $val['title'];
  $news_content =  $val['content'];
  $news_date = $val['news_date'];
  $news_author =  $val['author'];
  $news_author_link =  $val['author_link'];
}

$news_date = date("d.m.Y", strtotime($news_date));
?>

<main>
  <div class="container container-news">
    <h1 class="main-title">Новости</h1>

    <ul class="breadcrumbs-list">
      <li class="breadcrumbs-list__item">
        <a class="breadcrumbs-list__link" href="index.php">Главная</a>
      </li>
      <li class="breadcrumbs-list__item">
        <a class="breadcrumbs-list__link" href="?view=news">Новости</a>
      </li>
      <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
        <a class="breadcrumbs-list__link"><time><?= $news_date; ?></time></a>
      </li>
    </ul>

    <h2 class="news__title"><?= $news_title; ?></h2>

    <p class="grey-text small-text">Дата: <time><?= $news_date; ?></time></p>

    <p class="grey-text small-text">Источник:
      <a href="<?= $news_author_link; ?>">
        <?= $news_author; ?>
      </a>
    </p>

    <div class="news__content">
      <?= $news_content; ?>
    </div>


<!--    <h2 class="news__title">Беспрецедентная нехватка порожних контейнеров, сокращение количества рейсов морскими линиями, нехватка мест на судах, рост сезонных отгрузок, резкий скачок стоимости фрахта – вот нынешние реалии международной логистики.</h2>-->
<!---->
<!--    <p class="grey-text small-text">Дата: <time>16.01.2021</time></p>-->
<!---->
<!--    <p class="grey-text small-text">Источник:-->
<!--      <a href="/">-->
<!--        Группа компаний Альянс-Пром | Рязань-->
<!--      </a>-->
<!--    </p>-->
<!---->
<!--    <div class="news__content">-->
<!--      <p>Беспрецедентная нехватка порожних контейнеров, сокращение количества рейсов морскими линиями, нехватка мест на судах, рост сезонных отгрузок, резкий скачок стоимости фрахта – вот нынешние реалии международной логистики.</p>-->
<!--      <p>Только высокий профессионализм сотрудников отдела ВЭД компании Альянс-Пром позволяет в этих сложных условиях находить максимально безопасные и выгодные условия доставки грузов из Китая.</p>-->
<!--      <p>Всем участникам логистического процесса стоит запастись терпением и выдержкой.</p>-->
<!---->
<!--      <ul class="gallery">-->
<!--        <li class="gallery-item">-->
<!--          <a href="/img/news/news11.jpg" data-rel="lightcase:interplastica">-->
<!--            <img src="/img/news/news11.jpg" alt="">-->
<!--          </a>-->
<!--        </li>-->
<!---->
<!--        <li class="gallery-item">-->
<!--          <a href="/img/news/news12.jpg" data-rel="lightcase:interplastica">-->
<!--            <img src="/img/news/news12.jpg" alt="">-->
<!--          </a>-->
<!--        </li>-->
<!--      </ul>-->
<!--    </div>-->
  </div>
</main>
