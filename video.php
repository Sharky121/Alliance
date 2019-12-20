<?php

  $videoPress = [
      [
          'title' => 'Корпус/держатель/тест 6.08.2017-2',
          'link' => 'Ry6d-yT3Iyk'
      ],
      [
          'title' => 'Вилка/тест/15.06.17',
          'link' => 'LUqgzEP-l-4'
      ],
      [
          'title' => 'Корпус/держатель/тест 6.08.2017-1',
          'link' => 'KnbvSeOBhMM'
      ],
      [
          'title' => 'video 20160826 191933',
          'link' => 'J03F_lYjRNI'
      ],
      [
          'title' => 'Тест Верхний Упор - 18.07.16',
          'link' => 'pG-TLf8HEkU'
      ],
      [
          'title' => 'Последний тест уплотнителя (18.07.16)',
          'link' => '9jIAS17ksic'
      ],
      [
          'title' => 'Пресс форма на пластиковый дюбель 10х200. Проектирование и изготовление пресс-форм для дюбеля',
          'link' => 'Emp2qXus8e0'
      ],
      [
          'title' => 'ТПА для тонкостенного литья PAC300 (Yizumi)',
          'link' => 'sHbuoImaSEo'
      ],
      [
          'title' => 'Тест пресс-формы "Сепаратор"',
          'link' => 'GOhMmR85UYY'
      ]
  ];
  $videoTpa = [
      [
          'title' => 'Инжекционно-литьевая машина Alliance, серия Titan. Цикл 4,8 с',
          'link' => 'zRNGfCpJ97I'
      ],
      [
          'title' => '',
          'link' => '8F1KXN7oZ5s'
      ],
      [
          'title' => '',
          'link' => 'sXR4qE23tLo'
      ],
      [
          'title' => '',
          'link' => 'UCVScOQoERQ'
      ],
      [
          'title' => '',
          'link' => 'eQdDa6s7Zy8'
      ],
      [
          'title' => '',
          'link' => 'QBqBYGDFGQA'
      ],
      [
          'title' => '',
          'link' => 'SofG-AWfM8M'
      ],
      [
          'title' => '',
          'link' => 'TtT7rOL1IFg'
      ],
      [
          'title' => '',
          'link' => '_d6tEcWi9Gc'
      ],
      [
        'title' => '',
        'link' => 'hSUZouAKX2I'
      ],
      [
          'title' => '',
          'link' => 'gR5-o4qhAug'
      ],
      [
          'title' => '',
          'link' => 'fpXjH52oiRo'
      ],
      [
          'title' => '',
          'link' => 'Do2BuQSsvFI'
      ],
      [
          'title' => '',
          'link' => 'FRNcuTKYyv8'
      ],
      [
          'title' => '',
          'link' => '_pTszDrmAeM'
      ],
      [
          'title' => '',
          'link' => 'rsdEI1f7Cq8'
      ],
      [
          'title' => '',
          'link' => '1azMckhSk6s'
      ],
      [
          'title' => '',
          'link' => '0tHE-xsaY9k'
      ]
  ];
?>

<!DOCTYPE html>
<html lang="ru">
  <?php include ('parts/head.php') ?>

  <body>
    <?php include ('parts/header.php') ?>

    <main>
      <div class="container">
        <h1 class="main-title">Наши работы</h1>

        <ul class="breadcrumbs-list">
          <li class="breadcrumbs-list__item">
            <a class="breadcrumbs-list__link" href="index.php">Главная</a>
          </li>
          <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
            <a class="breadcrumbs-list__link">Наши работы</a>
          </li>
        </ul>

        <h3 class="video-title">Пресс-формы</h3>

        <ul class="video-list">
          <?php foreach ($videoPress as $key => $val): ?>
            <li class="video-list__item">
              <lite-youtube videoid="<?=$val['link']; ?>" style="background-image: url('https://i.ytimg.com/vi/ogfYd705cRs/hqdefault.jpg');">
                <div class="lty-playbtn"></div>
              </lite-youtube>
              <h4 class="video-list__title"><?=$val['title']; ?></h4>
            </li>
          <?php endforeach; ?>
        </ul>

        <h3 class="video-title">Термопластавтоматы</h3>

        <ul class="video-list">
            <?php foreach ($videoTpa as $key => $val): ?>
              <li class="video-list__item">
                <lite-youtube videoid="<?= $val['link']; ?>" style="background-image: url('https://i.ytimg.com/vi/ogfYd705cRs/hqdefault.jpg');">
                  <div class="lty-playbtn"></div>
                </lite-youtube>
                <h4 class="video-list__title"><?= $val['title']; ?></h4>
              </li>
            <?php endforeach; ?>
        </ul>
      </div>

    </main>

    <?php include ('parts/footer.php') ?>
  </body>

</html>
