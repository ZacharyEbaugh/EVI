<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="student_account_page.css" />
    <title>Document</title>
</head>
<body>

    <header>
        <div class="header">
            <button onClick="location.href = '../logout.php'"><img src="../images/logout.png"></button>

            <div class="title">
                <h1>Account</h1>
            </div>

            <button onClick="location.href = 'student_home.php'"><img src="../images/home.png"></button>
        </div>
    </header>
    <div class="container">
        <h1>Personal:</h1>
        <div class="accountButtons">
            <button onClick="location.href = '../account_settings/student_account_security.php'">Account Settings</button>
            <button onClick="location.href = 'student_registered_university.php'">Registered University</button>
            <button onClick="location.href = 'student_registered_RSO.php'">Registered RSO's</button>
        </div>
        <h1>RSOs and Events:</h1>
        <div class="miscButtons">
            <button onClick="location.href = 'student_find_RSO.php'">Search RSO's</button>
            <button onClick="location.href = 'student_public_events.php'">Search Public Events</button>
            <button onClick="location.href = 'student_private_events.php'">Search Private Events</button>
        </div>

    </div>
</body>
</html>