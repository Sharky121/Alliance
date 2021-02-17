<?php
/**
 * @var array $data
 */
?>

<div class="container">
  <h1 class="main-title">Полезные материалы</h1>

  <ul class="breadcrumbs-list">
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="index.php">Главная</a>
    </li>
    <li class="breadcrumbs-list__item">
      <a class="breadcrumbs-list__link" href="?view=articles">Полезные материалы</a>
    </li>
  </ul>

  <ul class="news-list page-news-list">
    <?php foreach ($data as $articles): ?>
      <li class="news-list__item">
        <div class="news-list__inner">
          <div class="news__img">
            <img src="<?= $articles['small_image_path']; ?>" alt="">
          </div>

          <h3 class="news__title">
            <a href="?view=article-page&id=<?= $articles['id'] ?>" class="news__link">
              <?= $articles['title']; ?>
            </a>
          </h3>

          <p class="news__text">
            <?= $articles['small_content']; ?>
          </p>
        </div>
      </li>
    <?php endforeach; ?>
  </ul>
</div>
