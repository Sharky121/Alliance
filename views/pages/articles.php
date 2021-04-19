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

  <section class="articles">
    <h2 class="visually-hidden">Статьи</h2>

    <ul class="articles__list">
      <?php foreach ($data as $articles): ?>
        <li class="articles__item">
          <article class="article">
            <img class="article__img" src="<?= $articles['small_image_path']; ?>" alt="">
            <div class="article__inner">
              <h3 class="article__title">
                <a href="?view=article-page&id=<?= $articles['id'] ?>" class="news__link">
                  <?= $articles['title']; ?>
                </a>
              </h3>
              <p class="article__text">

                <?= cutText( $articles['small_content'], $articles['id'], 300, 'text'); ?>
              </p>
            </div>
          </article>
        </li>
      <?php endforeach; ?>
    </ul>
  </section>
</div>
