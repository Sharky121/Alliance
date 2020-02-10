<?php

    if (isset($_GET['id'])) {
        $id = intval($_GET['id']);
    }

    $news_sql = "SELECT id, title, author, author_link, created_at, content FROM news WHERE id ='$id'";
    $news_list_res = mysqli_query($link,  $news_sql);
    $news_list = mysqli_fetch_all($news_list_res, MYSQLI_ASSOC);

foreach ($news_list as $key => $val) {
    $news_title =  $val['title'];
    $news_content =  $val['content'];
    $news_date = $val['created_at'];
    $news_author =  $val['author'];
    $news_author_link =  $val['author_link'];
}

    $news_date = date("d.m.Y", strtotime($news_date));
?>

<main>
    <div class="container">
        <h1 class="main-title">Новости</h1>

        <ul class="breadcrumbs-list">
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="index.php">Главная</a>
            </li>
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="?view=news">Новости</a>
            </li>
        </ul>

        <h2 class="news__title"><?= $news_title; ?></h2>
        
        <p class="grey-text small-text">Дата: <date><?= $news_date; ?></date></p>

        <p class="grey-text small-text">Источник: 
            <a href="<?= $news_author_link; ?>">
                <?= $news_author; ?>
            </a>
        </p>

        <div class="news__content">
            <?= $news_content; ?>
        </div>

    </div>

</main>
