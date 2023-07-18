<?php
session_start();


    include("config.php");
    include("function.php");


    $user_data = check_login($connection);

    //display profile infos
    $id = $_SESSION["user_id"];
    $result = mysqli_query($connection, "SELECT * FROM users WHERE user_id = $id");
    $row = mysqli_fetch_assoc($result);

    $userresult = mysqli_query($connection, "SELECT * FROM users WHERE user_id = $id");
    $userrow = mysqli_fetch_assoc($userresult);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Profile | Glamour</title>
    <link rel="shortcut icon" type="image/png" href="CSS/Pictures/favicon.png">
    
    <!--css link-->
    <link rel="stylesheet" href="CSS/user-profile.css">
    <!--icons-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.0.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <script src="https://kit.fontawesome.com/a79ec82bd5.js" crossorigin="anonymous"></script>
    <!--fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Judson&family=Poppins&family=Quicksand:wght@300&display=swap" rel="stylesheet">
</head>

<body id="contact-body">
    <!--header design-->
    <header>
        <a href="home-logged.php" class="logo"><img src="CSS/Pictures/glamour-logo-white.png"></a>

        <div class="navbar">
        <ul>
            <li><a href="home-logged.php" style="font-size: .8em">HOME</a></li>
            <li><a href="about-logged.php" style="font-size: .8em">ABOUT</a></li>
            <li>
                <a href="events-logged.php" style="font-size: .8em">EVENTS ▾</a>
                <ul class="dropdown">
                    <li><a href="wedding-logged.php" style="font-size: .7em">Wedding</a></li>
                    <li><a href="birthday-logged.php" style="font-size: .7em">Birthday</a></li>
                    <li><a href="christening-logged.php" style="font-size: .7em">Christening</a></li>
                    <li><a href="anniversary-logged.php" style="font-size: .7em">Anniversary</a></li>
                    <li><a href="corporate-logged.php" style="font-size: .7em">Corporate</a></li>
                </ul>
            </li>
            <li><a href="contact-logged.php" style="font-size: .8em">CONTACT</a></li>
            <li><a href="budget.php" style="font-size: .8em">BUDGET</a></li>
        </ul>
        </div>

        <div class="account-logged">
            <a href="user-profile.php? editid='.$id.' " class="fullname">
                <?php echo $userrow["firstname"] . ' ' . $userrow["lastname"]; ?>
            </a>
            <a href="user-profile.php? editid='.$id.' " class="pic">
                <img src="CSS/Pictures/uploads/adminpfp.png" alt="Profile Picture">
            </a>
            <div class="bx bx-menu" id="menu-icon"></div>
        </div>
        
    </header>

    <div class="grid-container">
        <div class="small-column">
            <h5>PROFILE ACCOUNT</h5>
            <!-- Left Nav Bar -->
            <li class="sidebar"><a href="user-profile.php" class="active">Personal Information</a></li>
            <li class="sidebar"><a href="user-booking-history.php">Booking History</a></li>
            <?php
                echo '<li class="sidebar"><a href="user-profile-settings.php? editid='.$id.' ">Account Settings</a></li>'
            ?>

            <li class="sidebar"><a href="logout.php" style="color: #999;">Logout Account</a></li>

        </div>
        <div class="large-column">
            <h4>PERSONAL INFORMATION</h4>
            <div class="grid">
                <div class="grid-item grid-item-2">
                    <h6>FIRST NAME</h6>
                    <p><i class="ri-user-fill"></i>&nbsp;&nbsp;<?php echo $row["firstname"]; ?></p>
                </div>
                <div class="grid-item grid-item-2">
                    <h6>LAST NAME</h6>
                    <p><i class="ri-user-line"></i>&nbsp;&nbsp;<?php echo $row["lastname"]; ?></p>
                </div>
                <div class="grid-item grid-item-2">
                    <h6>USERNAME</h6>
                    <p><i class="ri-user-heart-fill"></i>&nbsp;&nbsp;<?php echo $row["username"]; ?></p>
                </div>
                <div class="grid-item grid-item-2">
                    <h6>EMAIL</h6>
                    <p><i class="ri-mail-fill"></i>&nbsp;&nbsp;<?php echo $row["email"]; ?></p>
                </div>
                <div class="grid-item grid-item-2">
                    <h6>ADDRESS</h6>
                    <p><i class="fa-solid fa-location-dot"></i>&nbsp;&nbsp;<?php echo $row["address"]; ?></p>
                </div>
                <div class="grid-item grid-item-2">
                    <h6>CONTACT NUMBER</h6>
                    <p><i class="fa-solid fa-address-card"></i>&nbsp;&nbsp;<?php echo $row["phone"]; ?></p>
                </div>
            </div>
        </div>
    </div>

    <!--footer section-->
    <footer>
        <div class="container">
            <div class="sec aboutus">
                <h2>About Us</h2>
                <p> We believe that a successful event is 
                    a result of careful planning, attention 
                    to detail, and seamless execution. We 
                    are committed to providing exceptional 
                    service, and making the planning process 
                    enjoyable and stress-free for our clients. 
                    Let us take your event to the next level and 
                    create a truly unforgettable experience for you 
                    and your guests.</p>
                    <ul class="sci">
                        <li><a href=""><i class="ri-facebook-circle-fill"></i></a></li>
                        <li><a href=""><i class="ri-instagram-fill"></i></a></li>
                        <li><a href=""><i class="ri-twitter-fill"></i></a></li>
                        <li><a href=""><i class="ri-linkedin-box-fill"></i></a></li>
                    </ul>
            </div>
            <div class="sec quicklinks">
                <h2>Event Links</h2>
                <ul>
                    <li><a href="wedding-logged.php">Wedding</a></li>
                    <li><a href="birthday-logged.php">Birthday</a></li>
                    <li><a href="christening-logged.php">Christening</a></li>
                    <li><a href="anniversary-logged.php">Anniversary</a></li>
                    <li><a href="corporate-logged.php">Corporate</a></li>
                </ul>
            </div>
            <div class="sec contact">
                <h2>Contact Info</h2>
                <ul class="info">
                    <li>
                        <span><i class="ri-map-pin-fill"></i></span>
                        <span>Intramuros Manila,<br>Philippines</span>
                    </li>
                    <li>
                        <span><i class="ri-phone-fill"></i></span>
                        <p><a href="tel:09651626236">0965 162 6236</a><br></p>
                    </li>
                    <li>
                        <span><i class="ri-mail-open-fill"></i></span>
                        <p><a href="mailto:glamourevents2023@gmail.com">glamourevents2023@gmail.com</a>
                    </li>
                </ul>
            </div>
        </div>
        
    </footer>
    <div class="copyright">
        <p>&copy; 2023 Glamour Events. All Rights Reserved.</p>
    </div>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>