<?php
session_start();

$xml = simplexml_load_file('./xml/users.xml');
$email = $_POST['email'];
$password = $_POST['password'];
$isValid = false;

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $isValid = false;
    foreach ($xml->user as $user) {
        if ($email == $user->email) {
            if (password_verify($password, $user->password)) {
                $isValid = true;
                $_SESSION['user_id'] = $user->id;
                $_SESSION['user'] = $user->firstName . ' ' . $user->lastName;
                echo "Logged in successfully.";
                header('Location: tables.php');
                exit();
            } else {
                echo "Invalid password.";
            }
        } else {
            echo "Invalid email.";
        }
    }
} else {
    if (isset($_COOKIE['email'])) {
        $email = $_COOKIE['email'];
        $password = $_COOKIE['password'];
        $checked = true;
    } else {
        $email = '';
        $password = '';
        $checked = false;
    }
}
