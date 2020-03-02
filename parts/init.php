<?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    require_once('parts/helpers.php');
    require_once('database.php');

    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

    $link = @mysqli_connect(
        'localhost',
        'root',
        '123456',
        'alliance'
    ) or die('Ошибка: Невозможно подключиться к MySQL '. mysqli_connect_error());

    @mysqli_set_charset($link, "utf8") or die('mysqli: невозможно устновить кодировку '. mysqli_connect_error());


//ini_set('display_errors', 1);
//ini_set('display_startup_errors', 1);
//error_reporting(E_ALL);
//
//mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
//$link = @mysqli_connect(
//    'p530117.mysql.ihc.ru',
//    'p530117_alliance',
//    'fR8TuYxQ7Y',
//    'p530117_alliance'
//) or die('Ошибка: Невозможно подключиться к MySQL ' . mysqli_connect_error());
//
//@mysqli_set_charset($link, "utf8") or die('mysqli: невозможно устновить кодировку ' . mysqli_connect_error());
