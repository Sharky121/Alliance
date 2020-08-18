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
      <li class="video-list__item video-item">
        <a class="video-item__link" href="//www.youtube.com/embed/<?= $video['video_url']; ?>" data-rel="lightcase">
          <div class="video-item__background"></div>
          <svg class="video-item__ico" id="play" viewBox="0 0 100 100" width="60" height="60">
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
          <img class="video-item__img" src="//img.youtube.com/vi/<?= $video['video_url']; ?>/mqdefault.jpg" width="320" height="180">
        </a>

        <h4 class="video-list__title">
          <?= $video['title']; ?>
        </h4>
      </li>
    <?php endforeach; ?>
  </ul>
</div>
