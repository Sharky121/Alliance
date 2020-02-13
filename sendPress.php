<?php
$name=trim($_POST["title"]);
$logo=trim($_POST["logo"]);
$size=trim($_POST["size"]);

$mass=trim($_POST["mass"]);
$material=trim($_POST["material"]);
$distance=trim($_POST["distance"]);

$workTime=trim($_POST["workTime"]);
$systemType=trim($_POST["systemType"]);
$workTime=trim($_POST["workTime"]);

$force=trim($_POST["force"]);
$height=trim($_POST["height"]);
$closingCount=trim($_POST["closingCount"]);

$socketCount=trim($_POST["socketCount"]);
$workTime=trim($_POST["workTime"]);
$shagreen=trim($_POST["shagreen"]);

$require=trim($_POST["require"]);
$systemType=trim($_POST["systemType"]);
$other=trim($_POST["other"]);

$clientName=trim($_POST["name"]);
$phone=trim($_POST["phone"]);
$email=trim($_POST["email"]);

$to      = 'Sharky121@mail.ru, sale5@aliance-prom.ru, nastya@aliance-prom.ru';
$subject = 'Заявка на расчет пресс-формы';

$message =  'Наименование пресс-форм: ' . $name . "\r\n" .
    'Наличие надписей: ' . $logo . "\r\n" .
    'Габ. размеры изделия, мм: ' . $mass . "\r\n" .

    'Масса изделия, г: ' . $mass . "\r\n" .
    'Материал изделия (марка материала): ' . $material . "\r\n" .
    'Расстояние между колоннами, мм: ' . $distance . "\r\n" .

    'Усилие смыкания, тонн: ' . $force . "\r\n" .
    'Мин-макс высота пресс-формы, мм: ' . $height . "\r\n" .
    'Гарантийное кол-во смыканий ПФ: ' . $closingCount . "\r\n" .

    'Кол-во гнезд: ' . $socketCount . "\r\n" .
    'Режим работы: ' . $workTime . "\r\n" .
    'Наличие шагрени (класс): ' . $shagreen . "\r\n" .

    'Требования к поверхности формообразующих: ' . $require . "\r\n" .
    'Тип литниковой системы: ' . $systemType . "\r\n \r\n" .
    'Другое: ' . $other . "\r\n \r\n" .

    'Имя: ' . $clientName . "\r\n" .
    'email: ' . $email . "\r\n" .
    'Телефон: ' . $phone;

$headers = array();
$headers[] = "MIME-Version: 1.0";
$headers[] = "Content-type: text/plain; charset=utf-8";
$headers[] = "From: aliance-prom.ru";
$headers[] = "Reply-To: press-form@aliance-prom.ru";
$headers[] = "X-Mailer: PHP/".phpversion();

mail($to, $subject, $message, implode("\r\n", $headers));
?>
