<?php

  $news_sql = "SELECT id, title, author, created_at, content, small_content FROM news";
  $news_list_res = mysqli_query($link,  $news_sql);
  $news_list = mysqli_fetch_all($news_list_res, MYSQLI_ASSOC);

  foreach ($news_list as $key => $val) {
      $news_link =  $val['id'];
      $news_date = $val['created_at'];
  }

  $day = date("d", strtotime($news_date));


  function get_month($date) {
    $date = date("m", strtotime($date));

    switch ($date) {
    case '01':
        return 'янв';
        break;
    case '02':
        return 'фев';
        break;
    case '03':
        return 'мар';
        break;
    case '04':
        return 'апр';
        break;
    case '05':
        return 'май';
        break;
    case '06':
        return 'июн';
        break;
    case '07':
        return 'июл';
        break;
    case '08':
        return 'авг';
        break;
    case '09':
        return 'сен';
        break;
    case '10':
        return 'окт';
        break;
    case '11':
        return 'ноя';
        break;
    case '12':
        return 'дек';
        break;
    }

  }

  function cutText(string $text, int $id, int $num_symbols = 120): string {
    $words = explode(" ", $text);
    $current_length = 0;
    $new_text_array = [];

    foreach ($words as $word) {
        $word_length = mb_strlen($word);
        $current_length = $current_length + $word_length;

        if ($current_length <= $num_symbols) {
            $new_text_array[] = $word;
        }
    }

    $new_text = implode(" ", $new_text_array);

    if ($current_length <= $num_symbols) {
        return "<p class='news__text'>$new_text</p>";
    }

    return "<p class='news__text'>$new_text...<a class='news__more-link' href='?view=news-page&id=$id'> читать далее</a></p>";
}

?>

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
            <?php foreach ($news_list as $key => $val): ?>
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

                        <p class="news__text"><?= cutText($val['small_content'], $val['id']); ?></p>
                    </div>
                </li>
            <?php endforeach; ?>
        </ul>

    </div>

</main>
