<?php

declare(strict_types=1);

function signup_inputs() {
    if (isset($_SESSION["signup_data"]["username"]) && !isset($_SESSION["signup_errors"]["username_taken"])) {
        echo '<label for="username">Username</label>
              <input type="text" id="username" name="username" value="' . $_SESSION["signup_data"]["username"] . '">';
    } else {
        echo '<label for="username">Username</label>
              <input type="text" id="username" name="username">';
    }

    echo '<label for="password">Password</label>
          <input type="password" id="pwd" name="pwd">';

    if (isset($_SESSION["signup_data"]["email"]) && !isset($_SESSION["signup_errors"]["email_registered"]) && !isset($_SESSION["signup_errors"]["invalid_email"])) {
        echo '<label for="email">Email</label>
              <input type="text" id="email" name="email" value="' . $_SESSION["signup_data"]["email"] . '">';
    } else {
        echo '<label for="email">Email</label>
              <input type="text" id="email" name="email">';
    }
}

function check_signup_errors ()
{
    if (isset($_SESSION['signup_errors'])) {
        $errors = $_SESSION['signup_errors'];

        echo "<br>";

        foreach ($errors as $error) {
            echo '<p style="color: red; text-align: center; font-weight: bold">' . $error . '</p>';

        }

        unset($_SESSION['signup_errors']);
    
    } else if (isset($_GET["signup"]) && $_GET["signup"] === "success") {

        echo "<br>";
        echo '<p style="color: green; text-align: center; font-weight: bold"> Signup Success !</p>';

    }
}