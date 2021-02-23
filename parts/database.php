<?php

function fetchData($link, $sql): array
{
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));

    return mysqli_fetch_all($result, MYSQLI_ASSOC);
}

function getIndex($link, $id): array
{
    $sql = "SELECT id, seo_title, seo_description FROM pages WHERE id = '$id'";

    return fetchData($link, $sql);
}

function getCategories($link): array
{
  $sql = 'SELECT id, title, image_path, seo_title, seo_description FROM category ORDER BY id ASC';

//    $sql = "SELECT id, seo_title, seo_description FROM pages WHERE id = '$id'";

    return fetchData($link, $sql);
}

function getAllNews($link): array
{
    $sql = "SELECT id, news_date, title, author, created_at, content, small_content, seo_title, seo_description FROM news ORDER BY news_date DESC";

    return fetchData($link, $sql);
}

function getCurrentNews($link, $id): array
{
    $sql = "SELECT id, news_date, title, author, author_link, created_at, content, seo_title, seo_description FROM news WHERE id ='$id'";

    return fetchData($link, $sql);
}

function getAllVideo($link): array
{
    $sql = "SELECT id, title, video_url, category_id, seo_title, seo_description FROM video ORDER BY RAND()";

    return fetchData($link, $sql);
}

function getCatalog($link, $id): array
{
    $sql = "SELECT p.id, p.title, p.image_path, p.category_id, c.title as cat_title, c.seo_title, c.seo_description
            FROM products p
            INNER JOIN category c ON c.id = p.category_id
            WHERE p.category_id = '$id'";

    return fetchData($link, $sql);
}

function getProduct($link, $id): array
{
    $sql = "SELECT p.title, p.image_path, small_desc, content, big_image_path, p.category_id, c.id as cat_id, c.title as cat_title, video_url, v.title as video_title, p.seo_title, p.seo_description
                    FROM products p
                    INNER JOIN category c ON c.id = p.category_id
                    RIGHT JOIN video v ON v.category_id = p.category_id
                    WHERE p.id = '$id'";

    return fetchData($link, $sql);
}

function getArticles($link): array
{
  $sql = "SELECT id, title, small_image_path, small_content, content, seo_title, seo_description FROM articles ORDER BY id DESC";

  return fetchData($link, $sql);
}

function getCurrentArticle($link, $id): array
{
  $sql = "SELECT id, title, content, seo_title, seo_description FROM articles WHERE id ='$id'";

  return fetchData($link, $sql);
}
