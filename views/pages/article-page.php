<?php
/**
 * @var array $data
 */

foreach ($data as $val) {
  $article_title =  $val['title'];
  $article_content =  $val['content'];
}
?>

<main class="article-page">
  <div class="container article">
    <h1 class="main-title">Полезные материалы</h1>

    <ul class="breadcrumbs-list">
      <li class="breadcrumbs-list__item">
        <a class="breadcrumbs-list__link" href="index.php">Главная</a>
      </li>
      <li class="breadcrumbs-list__item">
        <a class="breadcrumbs-list__link" href="?view=articles">Полезные материалы</a>
      </li>
      <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
        <a class="breadcrumbs-list__link"><?= $article_title; ?></a>
      </li>
    </ul>

    <div class="article-page__content">

      <?= $article_content; ?>
    </div>
  </div>
</main>
