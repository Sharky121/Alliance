<?php
  $video_sql = "SELECT id, title, video_url, category_id FROM video ORDER BY RAND()";
  $video_list_res = mysqli_query($link, $video_sql);
  $video_list = mysqli_fetch_all($video_list_res, MYSQLI_ASSOC);
?>
<main>
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

<!--        <h3 class="video-title">Термопластавтоматы</h3>-->

        <ul class="video-list">
            <?php foreach ($video_list as $key => $val): ?>
              <li class="video-list__item">
                <lite-youtube class="video-list__box" videoid="<?=$val['video_url']; ?>" style="background-image: url('https://i.ytimg.com/vi/ogfYd705cRs/hqdefault.jpg');">
                  <div class="lty-playbtn"></div>
                </lite-youtube>

                <h4 class="video-list__title"><?=$val['title']; ?></h4>
              </li>
            <?php endforeach; ?>
        </ul>
      </div>

    </main>
