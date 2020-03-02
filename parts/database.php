<?php
function fetchData($link, $sql): array
{
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));

    return mysqli_fetch_all($result, MYSQLI_ASSOC);
}

function getCategories($link): array
{
    $sql = 'SELECT id, title, image_path FROM category ORDER BY id ASC';

    return fetchData($link, $sql);
}

function getNews($link): array
{
    $sql = "SELECT id, title, author, created_at, content, small_content FROM news ORDER BY id ASC LIMIT 4";

    return fetchData($link, $sql);
}

function getAllNews($link): array
{
    $sql = "SELECT id, title, author, created_at, content, small_content FROM news";

    return fetchData($link, $sql);
}

function getAllVideo($link): array
{
    $sql = "SELECT id, title, video_url, category_id FROM video ORDER BY RAND()";

    return fetchData($link, $sql);
}

function getCatalog($link, $id): array
{
    $sql = "SELECT id, title,image_path FROM products WHERE category_id = '$id'";

    return fetchData($link, $sql);
}

function getProduct($link, $id): array
{
    $sql = "SELECT p.title, p.image_path, small_desc, content, big_image_path,  c.id as cat_id, c.title as cat_title
                    FROM products p 
                    INNER JOIN category c ON c.id = p.category_id
                    WHERE p.id = '$id'";

    return fetchData($link, $sql);
}

function getProductVideo($link, $id): array
{
    $sql = "SELECT v.title as video_title, video_url, category_id
                      FROM video v 
                      INNER JOIN category c ON c.id = category_id
                      WHERE c.id = '$id'";

    return fetchData($link, $sql);
}

function getTitleProducts($link, $id): array
{
    $sql = "SELECT seo_title, seo_description FROM products WHERE id = '$id'";

    return fetchData($link, $sql);
}

