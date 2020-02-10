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
    $news_date =  $val['created_at'];
    $news_author =  $val['author'];
    $news_author_link =  $val['author_link'];
}
?>

<main>
    <div class="container">
        <h1 class="main-title">Новости</h1>
        <h2><?= $news_title; ?></h2>
        <p><?= $news_date; ?></p>
        <a href="<?= $news_author_link; ?>"><?= $news_author; ?></a>
        <div>
            <?= $news_content; ?>
        </div>

    </div>

</main>
