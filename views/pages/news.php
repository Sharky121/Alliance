<?php
/**
 * @var array $data
 */
?>

<div class="container">
  <h1 class="main-title">Новости</h1>

  <ul class="breadcrumbs-list">
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="index.php">Главная</a>
    </li>
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="?view=news">Все новости</a>
    </li>
  </ul>

  <ul class="news-list page-news-list">
    <?php foreach ($data as $news): ?>
      <li class="news-list__item">
        <div class="news-list__inner">
          <div class="news__date"><?= date("d", strtotime($news['news_date']))  ?><br><?= get_month($news['news_date']); ?></div>

          <h3 class="news__title">
            <a href="?view=news-page&id=<?= $news['id'] ?>" class="news__link"><?=  $news['title']; ?></a>
          </h3>

          <p class="news__meta">
            <svg class="news__img" viewBox="0 0 482.9 482.9">
              <use xlink:href="#avatar"></use>
            </svg>
            Источник: <?= $news['author']; ?>
          </p>

          <p class="news__text"><?= cutText( $news['small_content'],  $news['id'], 120, 'text'); ?></p>
        </div>
      </li>
    <?php endforeach; ?>
  </ul>
</div>
