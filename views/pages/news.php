<?php
  foreach ($news as $key => $val) {
      $news_link =  $val['id'];
      $news_date = $val['created_at'];
  }

  $day = date("d", strtotime($news_date));
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
        <?php foreach ($news as $val): ?>
            <li class="news-list__item">
                <div class="news-list__inner">
                    <div class="news__date"><?= $day; ?><br><?= get_month($news_date); ?></div>

                    <h3 class="news__title">
                        <a href="?view=news-page&id=<?= $val['id'] ?>" class="news__link"><?= $val['title']; ?></a>
                    </h3>

                    <p class="news__meta">
                        <svg class="news__img" viewBox="0 0 482.9 482.9">
                            <use xlink:href="#avatar"></use>
                        </svg>
                        Источник: <?= $val['author']; ?>
                    </p>

                    <p class="news__text"><?= cutText($val['small_content'], $val['id'], 120, 'text'); ?></p>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
