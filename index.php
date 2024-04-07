<?php
require_once ('includes/config_session.inc.php');
require_once ('includes/signup_view.inc.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signup & Login Page</title>
<link rel="stylesheet" href="css/styles.css">
</head>
<body>

<div class="container">
    <h2>Signup</h2>
    <form id="signup-form" action="includes/signup.inc.php" method="post">
       <?php

       signup_inputs()

       ?>
       
            <input type="submit" value="Signup">
    </form>

    <?php

    check_signup_errors ();

    ?>
    
</div>

</body>
</html>
