<?php

require_once 'parts/init.php';


function getCategoryName($category_list, $id) {
    foreach ($category_list as $key => $val) {
        if ($id == $val['id']) {
            echo $val['title'];
        }
    };
}


$view = empty($_GET['view']) ? 'index' : $_GET['view'];

include ($_SERVER['DOCUMENT_ROOT'].'/views/layouts/index.php');
