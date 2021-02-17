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
  </div>
</main>
