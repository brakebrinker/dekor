<?php

$post = (!empty($_POST)) ? true : false;

if($post)
{
    $name = htmlspecialchars($_POST['name']);
    $phone = htmlspecialchars($_POST['phone']);
    $email = htmlspecialchars($_POST['email']);
    $subject = htmlspecialchars($_POST['subject']);
    $message = htmlspecialchars($_POST['message']);
    $error = '';

    if(!$name) {
        $error .= 'Вы не ввели имя<br />';
    }

    if( !$phone && !$email ) {
        $error .= 'Вы не ввели номер телефона или e-mail<br />';
    }

// Check email
    function ValidateEmail($value) {
        $regex = '|^[-0-9a-z_\.]+@[-0-9a-z_^\.]+\.[a-z]{2,6}$|i';
        $string = preg_replace($regex, '', $value);
        return empty($string) ? true : false;
    }
// Check phone
    function ValidatePhone($value) {
        $regex = '/^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$/';
        $string = preg_replace($regex, '', $value);
        return empty($string) ? true : false;
    }

    if( $email && !ValidateEmail($email) ) {
        $error .= 'E-mail введён неверно<br />';
    }

    if( $phone && !ValidatePhone($phone) ) {
        $error .= 'Номер телефона введён неверно<br />';
    }

    if(!$error) {
        $headers = "Content-type: text/plain; charset=\"utf-8\"\r\n";
        $headers .= "MIME-Version: 1.0\r\n";
        $headers = "From: =?utf-8?B?".base64_encode($name) ."?= <$email>\n";
        $message .= "\n" .$name ."\n" .$phone ."\n" .$email;
        $mail = mail('info@deco-r.su', "=?utf-8?B?".base64_encode($subject)."?=", $message, $headers);
        if($mail) {
            echo 'OK';
        }
    } else {
        echo $error;
    }
}
?>