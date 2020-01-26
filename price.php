<?php
	if(isset($_POST["email"]) && !empty($_POST["email"])) {
		$email=trim($_POST["email"]);
	} else {
		$email = '';
	}

	$to      = 'Sharky121@mail.ru';
	$subject = 'Заявка на обратный звонок';

	$message =  'email: ' . $email;

	$headers = array();
	$headers[] = "MIME-Version: 1.0";
	$headers[] = "Content-type: text/plain; charset=utf-8";
	$headers[] = "From: aliance-prom.ru";
	$headers[] = "Reply-To: press-form@aliance-prom.ru";
	$headers[] = "X-Mailer: PHP/".phpversion();

	mail($to, $subject, $message, implode("\r\n", $headers));


