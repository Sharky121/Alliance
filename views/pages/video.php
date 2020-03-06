<div class="container">
    <h1 class="main-title">Наши работы</h1>

    <ul class="breadcrumbs-list">
        <li class="breadcrumbs-list__item">
          <a class="breadcrumbs-list__link" href="../../index.php">Главная</a>
        </li>

        <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
          <a class="breadcrumbs-list__link">Наши работы</a>
        </li>
    </ul>

    <ul class="video-list">
        <?php foreach ($data as $video): ?>
          <li class="video-list__item">
            <lite-youtube class="video-list__box" videoid="<?= $video['video_url']; ?>" style="background-image: url('https://i.ytimg.com/vi/ogfYd705cRs/hqdefault.jpg');">
              <div class="lty-playbtn"></div>
            </lite-youtube>

            <h4 class="video-list__title"><?= $videol['title']; ?></h4>
          </li>
        <?php endforeach; ?>
    </ul>
</div>

