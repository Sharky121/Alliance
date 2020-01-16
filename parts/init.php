<?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    $link = @mysqli_connect(
        'localhost',
        'root',
        '123456',
        'alliance'
    ) or die('Ошибка: Невозможно подключиться к MySQL '. mysqli_connect_error());

    @mysqli_set_charset($link, "utf8") or die('mysqli: невозможно устновить кодировку '. mysqli_connect_error());
