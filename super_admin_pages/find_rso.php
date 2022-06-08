<?php

require('../db_connection.php');
session_start();

# If Super Administrator has not logged in yet, direct the user to the index/login page 
if (isset($_SESSION['sa_login_successful']) == null && $_SESSION['sa_login_successful'] == false) {

    echo "
        <script>
            alert('Please Login To Access This Page'); 
            window.location.href='../index.php'; 
        </script>
        ";
}

if (isset($_GET['name']) && isset($_GET['super'])) {

    $uni = $_GET['name'];

    $query = "SELECT * FROM `rso_active` WHERE `university`='$_GET[name]'";
    $result = mysqli_query($con, $query);

    if ($result) {

        $fetch_result = mysqli_fetch_assoc($result);

        $name = $fetch_result['name'];
        $university = $fetch_result['university'];
        $admin_name = $fetch_result['admin_name'];
        $admin_email = $fetch_result['admin_email'];
        $super = $_GET['super'];
    }
}

$user_info = "SELECT * FROM `user_information` WHERE `username`='$_SESSION[username]'";
$user_query = mysqli_query($con, $user_info);

if ($user_query) {

    $fetch_user = mysqli_fetch_assoc($user_query);

    $user_email = $fetch_user['email'];
}

$active = "(A)";
$inactive = "(IA)";

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find RSOs</title>
    <link rel="stylesheet" href="css/find_rso.css" />
</head>

<body>

    <header>
        <div class="header">
            <button onClick="location.href = '../logout.php'"><img src="../images/logout.png"></button>

            <div class="title">
                <h1>Find RSOs</h1>
                <h3>For <?php echo $uni; ?></h3>
            </div>

            <button onClick="location.href = 'SA_home.php'"><img src="../images/home.png"></button>
        </div>
    </header>

    <div class="rso">
        <div class="lists">
            <table border="1px">
                <?php

                $query = "SELECT * FROM `rso_active` WHERE `university`='$university'";
                $result = mysqli_query($con, $query);

                if ($result) {

                    if (mysqli_num_rows($result) > 0) {

                        while ($name = mysqli_fetch_assoc($result)) {

                            $active_status_query = "SELECT * FROM `rso_active` WHERE `name`='$name' AND `university`='$university' AND `admin_name`='$admin_name'";
                            $active_status_result = mysqli_query($con, $active_status_query);
                            if ($active_status_result) {

                                $fetch_active_status = mysqli_fetch_assoc($active_status_result);
                                if ($fetch_active_status['status'] == 0) {

                                    $status = $active;
                                } elseif ($fetch_active_status['status'] == 1) {

                                    $status = $inactive;
                                }
                            }
                ?>
                            <tr class="names">
                                <td>
                                    <button class="event_info" onclick="location.href = 'rso_information.php?name=<?php echo $name['name']; ?>&university=<?php echo $name['university']; ?>'">
                                        <?php
                                        echo "$name[name]";
                                        echo "$status";
                                        echo "<br>";
                                        echo "Admin: $name[admin_name]";
                                        ?>
                                    </button>
                                </td>
                            </tr>
                        <?php
                        }
                    } else {

                        ?>

                        <div class="no_rso" style="text-align: center; font-size: 40px; color: black; width: 3000px; margin: auto; margin-left: 170px; padding: 10px 10px;">
                            <h3>No RSOs Exist Yet For <?php echo $uni ?></h3>
                        </div>

                <?php
                    }
                }
                ?>
            </table>
        </div>
    </div>

    <div class="buttons">
        <a href="view_rso.php?name=<?php echo $uni; ?>&super=<?php echo $super ?>">
            View RSOs
        </a>

        <a href="university_profile.php?name=<?php echo $uni; ?>">
            University Home
        </a>
    </div>

    <div class="join_rso">
        <form style="text-align: center;" method="POST">
            <input type="text" placeholder="Please enter the RSO name to join" name="join" required /><br>
            <input type="submit" value="JOIN" />
        </form>
    </div>

    <?php

    if (isset($_POST['join'])) {

        $rso_to_join = $_POST['join'];

        $rso_query = "SELECT * FROM `rso_active` WHERE `university`='$university' AND `name`='$rso_to_join'";
        $rso_query_result = mysqli_query($con, $rso_query);

        if ($rso_query_result) {

            # RSO Names does not exist
            if (mysqli_num_rows($rso_query_result) == 0) {

                echo "
                    <script>
                        alert('The RSO name entered does not match a RSO name on the screen. Please Try Again'); 
                    </script>";
            } else {

                $rso_info = mysqli_fetch_assoc($rso_query_result);

                $check_query = "SELECT * FROM `rso_members` WHERE `rso_name`='$rso_info[name]' AND `university`='$university' AND `member_email`='$user_email'";
                $check_result = mysqli_query($con, $check_query);

                # If the user already joined the RSO
                if (mysqli_num_rows($check_result) > 0) {

                    echo "You are already a member of $rso_info[name] ~~";
                } else {

                    $rso_join_query = "INSERT INTO `rso_members`(`member_email`, `rso_name`, `university`, `admin_name`) VALUES ('$user_email','$rso_info[name]','$university','$admin_name')";
                    $join_result = mysqli_query($con, $rso_join_query);

                    if ($join_result) {

                        $member_query = "SELECT * FROM `rso_members` WHERE `rso_name`='$rso_info[name]' AND `university`='$university'";
                        $member_result = mysqli_query($con, $member_query);

                        if ($member_result) {

                            $num_members = mysqli_num_rows($member_result);

                            if ($num_members >= 5) {

                                $update_active_status = "UPDATE `rso_active` SET `status`='0' WHERE `name`='$rso_info[name]' AND `university`='$university'";
                                $update_result = mysqli_query($con, $update_active_status);

                                if ($update_result) {

                                    echo "
                                        <script>
                                            alert('You have joined $rso_info[name] ~'); 
                                        </script>";
                                } else {

                                    echo "
                                        <script>
                                            alert('Server Is Down. Please Try Again ~'); 
                                            window.location.href='SA_home.php'; 
                                        </script>";
                                }
                            } else {

                                echo "
                                    <script>
                                        alert('You have joined $rso_info[name] ~'); 
                                    </script>";
                            }
                        }
                    }
                }
            }
        }
    }

    ?>


</body>

</html>