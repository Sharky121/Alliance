<!DOCTYPE html>
<html lang="ru">
  <?php include ('parts/head.php') ?>

  <body>
    <?php include ('parts/header.php') ?>

    <main>
      <div class="container">
        <h1 class="main-title">Новости</h1>

        <ul class="breadcrumbs-list">
          <li class="breadcrumbs-list__item">
            <a class="breadcrumbs-list__link" href="index.php">Главная</a>
          </li>
          <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
            <a class="breadcrumbs-list__link">Новости</a>
          </li>
        </ul>

        <ul class="news-list page-news-list">
          <?php foreach ($news as $key => $val): ?>
            <li class="news-list__item">
              <div class="news-list__inner">
              <div class="news__date"><?= $val['date']; ?> <br> дек</div>

              <h3 class="news__title">
                <a href="" class="news__link"><?= $val['name']; ?></a>
              </h3>
              <p class="news__meta">
                <svg class="news__img" viewBox="0 0 482.9 482.9">
                  <use xlink:href="#avatar"></use>
                </svg>
                Источник: <?= $val['author']; ?>
              </p>
              <p class="news__text"><?= $val['small_desc']; ?></p>
            </div>
            </li>
          <?php endforeach; ?>
        </ul>

      </div>

    </main>

    <?php include ('parts/footer.php') ?>
  </body>

</html>
