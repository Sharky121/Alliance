<?php

require_once 'parts/init.php';

if (isset($_GET['cat'])) {
    $category_url = $_GET['cat'];
    $catalog = getCatalog($link, $category_url);
} else {
    $category_url = '';
    $catalog = '';
}

if (isset($_GET['id'])) {
    $product_id = intval($_GET['id']);

    $product_info = getProduct($link, $product_id);
    $product_video = getProductVideo($link, $product_id);
} else {
    $product_info = '';
    $product_video = '';
}

$view = empty($_GET['view']) ? 'index' : $_GET['view'];

$template_name = $view . '.php';

$categories = getCategories($link);

if ($template_name === 'index.php') {
    $news = getNews($link);
} else {
    $news = getAllNews($link);
}

$videos = getAllVideo($link);

$page_content = include_template($template_name, [
    'title' => 'readme: блог, каким он должен быть',
    'news' => $news,
    'videos' => $videos,
    'categories' => $categories,
    'catalog' => $catalog,
    'category_url' => $category_url,
    'product_info' => $product_info,
    'product_video' => $product_video

]);

$layout_content = include_template('layout.php', [
    'content' => $page_content,
    'categories' => $categories,
    'seo_title' => 'dsf'
]);

print($layout_content);
