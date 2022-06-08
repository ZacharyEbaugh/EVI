<?php

require('../db_connection.php');
session_start();

$userQuery = "SELECT * FROM `user_information` WHERE `username` = '$_SESSION[username]'";
$userResult = mysqli_query($con, $userQuery);
$userUni = mysqli_fetch_assoc($userResult);
$uni = $userUni['university_name'];

?>

<script>
    const date = new Date();
    const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
</script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="student_day_events.css" />
    <title>Day Information</title>
</head>
<body>      
    <div class="container">
        <div class="navigationBar">
            <div class="logoutButton">
                <button onClick="location.href = '../logout.php'"><img src="../images/logout.png"></button>
            </div>
            <div class="Title">
                <button onClick="location.href = 'student_home.php'">
                <h1>EVI</h1>
                <h2>Event Tracker</h2>
                </button>
            </div>
            <div class="month">
                <div class="date">
                    <h1><script>document.querySelector('.date h1').innerHTML = months[date.getMonth()] + " " +  date.getDate() + " " +  date.getFullYear();</script></h1>
                </div>
            </div>
            <div class="buttons">
                <div class="accountSettings">
                    <!-- <a href="../account_settings/student_account_security.php">Account Settings</a> -->
                    <button onClick="location.href = 'student_account_page.php'">Account</button>
                </div>
                <div class="requestRSO">
                    <!-- <a href="RSO_Student/request_RSO_student.php">Request RSO</a> -->
                    <button onClick="location.href = 'RSO_Student/request_RSO_student.php'">Request RSO</button>
                </div>
            </div>
    </div>
        <div class="eventList">
            <h1>Public Events</h1>
            <div class="publicEvents">
                <div class="PUtimeList">
                    <p></p>
                </div>
                <div class="PUeventType">
                    <p></p>
                </div>
                <div class="PUlocationList">
                    <p></p>
                </div>
                <div class="PUmoreInfoList">
                    <p></p>
                </div>
            </div>
            <h1>Private Events</h1>
            <div class="privateEvents">
                <div class="PRtimeList">
                    <p></p>
                </div>
                <div class="PReventType">
                    <p></p>
                </div>
                <div class="PRlocationList">
                    <p></p>
                </div>
                <div class="PRmoreInfoList">
                    <p></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<?php
    require('../db_connection.php');
    $date = $_COOKIE["date"];
    $event_names = array();
    $event_times = array();
    $event_locations = array();
    $event_info = array();

    $public_event_query = "SELECT * FROM `public_events` WHERE `date` = '$date'";
    $result = mysqli_query($con, $public_event_query);
    $numRows = mysqli_num_rows($result);
    for ($i = 0; $i < $numRows; $i++){
        $event = mysqli_fetch_assoc($result);
        array_push($event_names, $event['name']);
        array_push($event_times, $event['time_from']);
        array_push($event_locations, $event['location']);
    }
    ?>;
    <script>
    document.querySelector('.PUeventType p').innerHTML = "";
    document.querySelector('.PUtimeList p').innerHTML = "";
    document.querySelector('.PUlocationList p').innerHTML = "";
    document.querySelector('.PUmoreInfoList p').innerHTML = "";
    document.querySelector('.PUeventType p').innerHTML = "<?php for ($i = 0; $i < mysqli_num_rows($result); $i++)
                                                                {
                                                                    if (isset($event_names[$i]))
                                                                        echo $event_names[$i] . "</br></br>";
                                                                }?>";
    document.querySelector('.PUtimeList p').innerHTML = "<?php for ($i = 0; $i < mysqli_num_rows($result); $i++)
                                                                {
                                                                    if (isset($event_times[$i])){
                                                                        echo date('H:i A', strtotime($event_times[$i])) . "</br></br>";
                                                                    }
                                                                }?>";
    document.querySelector('.PUlocationList p').innerHTML = "<?php for ($i = 0; $i < mysqli_num_rows($result); $i++)
                                                                {
                                                                    
                                                                    if (isset($event_locations[$i]))
                                                                        echo $event_locations[$i] . "</br></br>";
                                                                }?>";    
    for (let i = 0; i < <?php echo mysqli_num_rows($result) ?>; i++)
    {
        document.querySelector('.PUmoreInfoList p').innerHTML += `<button onClick="location.href = 'event_info.php'">-></button>` + "</br></br>"; 
    }


    <?php
    require('../db_connection.php');
    $event_names = array();
    $event_times = array();
    $event_locations = array();
    $event_info = array();

    $public_event_query = "SELECT * FROM `private_events` WHERE `date` = '$date' AND `university` = '$uni'";
    $result = mysqli_query($con, $public_event_query);
    for ($i = 0; $i < mysqli_num_rows($result); $i++){
        $event = mysqli_fetch_assoc($result);
        array_push($event_names, $event['name']);
        array_push($event_times, $event['time_from']);
        array_push($event_locations, $event['location']);
    }
    ?>;

    document.querySelector('.PReventType p').innerHTML = "";
    document.querySelector('.PRtimeList p').innerHTML = "";
    document.querySelector('.PRlocationList p').innerHTML = "";
    document.querySelector('.PRmoreInfoList p').innerHTML = "";
    document.querySelector('.PReventType p').innerHTML = "<?php for ($i = 0; $i < mysqli_num_rows($result); $i++)
                                                                {
                                                                    if (isset($event_names[$i]))
                                                                        echo $event_names[$i] . "</br></br>";
                                                                }?>";
    document.querySelector('.PRtimeList p').innerHTML += "<?php for ($i = 0; $i < mysqli_num_rows($result); $i++)
                                                                {
                                                                    if (isset($event_times[$i])){
                                                                        echo date('H:i A', strtotime($event_times[$i])) . "</br></br>";
                                                                    }
                                                                }?>";
    document.querySelector('.PRlocationList p').innerHTML += "<?php for ($i = 0; $i < mysqli_num_rows($result); $i++)
                                                                {
                                                                    
                                                                    if (isset($event_locations[$i]))
                                                                        echo $event_locations[$i] . "</br></br>";
                                                                }?>";    
    for (let i = 0; i < <?php echo mysqli_num_rows($result) ?>; i++)
    {
        document.querySelector('.PUmoreInfoList p').innerHTML += `<button onClick="location.href = 'event_info.php'">-></button>` + "</br></br>"; 
    }
    </script>        
