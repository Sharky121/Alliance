<?php

require_once 'parts/init.php';

define("INDEX_ID", 1, true);
define("PRESSFORM_ID", 2, true);
define("SERVICE_ID", 3, true);

$view = empty($_GET['view']) ? 'index' : $_GET['view'];

$template_name = $view . '.php';

$categories = getCategories($link);

function get_pageData(string $page, $link) {
    if (isset($_GET['id'])) {
        $id = intval($_GET['id']);
    }

    if (isset($_GET['cat'])) {
        $category_url = $_GET['cat'];
    }

    switch ($page) {
        case 'index.php':
          return getIndex($link, INDEX_ID);
          break;
        case 'bio.php':
        case 'service.php':
            return getIndex($link, SERVICE_ID);
            break;
        case 'news.php':
            return getAllNews($link);
            break;
        case 'news-page.php':
            return getCurrentNews($link, $id);
            break;
        case 'video.php':
            return getAllVideo($link);
            break;
        case 'products.php':
            return getCategories($link);
            break;
        case 'catalog.php':
            return getCatalog($link, $category_url);
            break;
        case 'product.php':
            return getProduct($link, $id);
            break;
        case 'pressform.php':
            return getIndex($link, PRESSFORM_ID);
            break;
        default:
            echo "";
    }
};

$data = get_pageData($template_name, $link);

foreach ($data as $seo) {
    $seo_title =  $seo['seo_title'];
    $seo_description = $seo['seo_description'];
};

$page_content = include_template($template_name, [
    'categories' => $categories,
    'data' => $data
]);

$layout_content = include_template('layout.php', [
    'content' => $page_content,
    'categories' => $categories,
    'seo_title' => $seo_title,
    'seo_description' => $seo_description
]);

print($layout_content);
