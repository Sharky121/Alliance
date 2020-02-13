<?php

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

function cutText(string $text, int $id, int $num_symbols, string $mode): string {
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

    if ($mode == 'title') {
        return "<p class='news__text'>$new_text...</p>";
    }
    if ($mode == 'text') {
        return "<p class='news__text'>$new_text...<a class='news__more-link' href='?view=news-page&id=$id'> читать далее</a></p>";
    }
}

function getCategoryName($category_list, $id) {
    foreach ($category_list as $key => $val) {
        if ($id == $val['id']) {
            echo $val['title'];
        }
    };
}
