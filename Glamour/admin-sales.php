<?php
session_start();


    include("config.php");
    include("function.php");


    $user_data = check_login($connection);


 //sa pagdisplay ng username
 $id = $_SESSION["user_id"];
 $result = mysqli_query($connection, "SELECT * FROM users WHERE user_id = $id");
 $row = mysqli_fetch_assoc($result);


 //display bookings
 $sql = "SELECT * FROM booking WHERE status = 'pending' ORDER BY id DESC";
 $bookingresult = mysqli_query($connection, $sql);
         

?>


<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales Report | Admin</title>
    <link rel="shortcut icon" type="image/png" href="CSS/Pictures/favicon.png">


    <!--css link-->
    <link rel="stylesheet" href="CSS/adminstyle.css">
    <!--icons-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.0.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <!--fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Judson&family=Poppins&family=Quicksand:wght@300&display=swap" rel="stylesheet">
    
    <!--pie chart-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Event', 'Amount'],
          ['Wedding', 500000],
          ['Birthday', 450000],
          ['Christening', 100000],
          ['Anniversary', 400000],
          ['Corporate', 350000]
        ]);


        var options = {
          backgroundColor: 'transparent',
          colors: ['#D0A65B','#0E0E0E','#1C1C1C','#282828','#323232'],
          legend: 'none',
          pieSliceBorderColor: 'transparent',
          chartArea: {
            width: '90%',
            height: '90%'
          },
          width: 400,
          height: 300
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>

    <!---line chart --->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', { packages: ['corechart', 'line'] });
      google.charts.setOnLoadCallback(drawLineColors);

      function drawLineColors() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Month');
        data.addColumn('number', 'Income');

        data.addRows([
        ['Jan', 1000000], ['Feb', 500000], ['Mar', 300000], ['Apr', 600000], ['May', 250000], ['June', 0],
        ['July', 0], ['Aug', 0], ['Sept', 0], ['Oct', 0], ['Nov', 0], ['Dec', 0]
      ]);

      var options = {
          hAxis: {
            title: 'Months',
            textStyle: {
              color: 'white' // Set the font color to white for hAxis
            },
            gridlines: {
              color: 'transparent' // Remove horizontal gridlines
            },
            slantedText: true, // Rotate the X-axis labels
            slantedTextAngle: 45 // Set the rotation angle
          },
          vAxis: {
            title: 'Income',
            textStyle: {
              color: 'white' // Set the font color to white for vAxis
            },
            gridlines: {
              color: 'transparent' // Remove vertical gridlines
            }
          },
          legend: 'none',
          colors: ['#D0A65B'],
          backgroundColor: {
            fill: 'transparent' // Set the background color
          },
          chartArea: {
            width: '80%', // Adjust the width of the chart area
            height: '50%' // Adjust the height of the chart area
          }
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
</head>


<body>
<header>
        <ul class="left-nav">
            <!-- Profile Section -->
            <li class="profile-section">
                <img src="CSS/Pictures/uploads/adminpfp.png" alt="Profile Picture">
                <h4><?php echo $row["username"]; ?></h4>
                <p>Administrator</p>
            </li>
            <!-- Left Nav Bar -->
            <li class="sidebar"><a href="admin-dashboard.php" style="text-decoration: none;"><i class="ri-dashboard-line"></i> Dashboard</a></li>
            <li class="sidebar"><a href="admin-bookinglist.php" style="text-decoration: none;"><i class="ri-file-list-line"></i> Event Book List</a></li>
            <li class="sidebar"><a href="admin-calendar.php" style="text-decoration: none;"><i class="ri-calendar-line"></i> Event Calendar</a></li>
            <li class="sidebar"><a href="admin-coordinators.php" style="text-decoration: none;"><i class="ri-file-user-line"></i> Coordinators</a></li>
            <li class="sidebar"><a href="admin-billing.php" style="text-decoration: none;"><i class="ri-wallet-2-line"></i> Billing Report</a></li>
            <li class="sidebar"><a href="admin-sales.php" class="active" style="text-decoration: none;"><i class="ri-folder-chart-line"></i> Sales Report</a></li>
            <!-- Logout Button -->
		    <li class="logout-button">
			    <a href="logout.php"><i class="ri-logout-box-line"></i> Logout</a>
		    </li>
        </ul>
    </header>
    <main>
        <div class="top-content">
            <h2>Sales Report</h2>
            <a href="admin-bookinglist.php"><img src="CSS/Pictures/glamour-logo.png" alt="Logo"></a>
        </div>
        <div class="container-sales">
          <div style="display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 20px;">
            <h3 style="font-size: 1.25em; font-weight: bolder; font-family: Poppins;">TOTAL INCOME</h3>
            <h1 style="font-size: 2em; font-weight: bolder; font-family: Poppins;">PHP 1,000,000</h1>
          </div>
              <div id="chart_div"></div>
        </div>

        <div class="grid2">
          <div class="grid-item2 grid-item-2">
            <h5 style="font-size: 1.25em; font-weight: bolder; font-family: Poppins; margin-bottom: 15px;">TOP 5 SALES</h5>
            <table class="salestable">
                <tbody>

                    <tr style="background: #FED586; margin-bottom: 10px; color: black; font-weight: bolder; border-radius: 200px; ">
                      <td style="text-align: center;">1</td>
                      <td style="text-align: center;">Ms. Grande</td>
                      <td style="text-align: center;">Wedding</td>
                      <td style="text-align: center;">PHP 2,500,000</td>
                    </tr>

                    <tr style="background: #333333;">
                      <td style="text-align: center;">2</td>
                      <td style="text-align: center;">Ms. Swift</td>
                      <td style="text-align: center;">Wedding</td>
                      <td style="text-align: center;">PHP 2,000,000</td>
                    </tr>

                      <tr style="background: #333333;">
                      <td style="text-align: center;">3</td>
                      <td style="text-align: center;">Mr. Pangilinan</td>
                      <td style="text-align: center;">Anniversary</td>
                      <td style="text-align: center;">PHP 1,500,000</td>
                    </tr>

                    <tr  style="background: #333333;">
                      <td style="text-align: center;">4</td>
                      <td style="text-align: center;">Ms. Cortesi</td>
                      <td style="text-align: center;">Wedding</td>
                      <td style="text-align: center;">PHP 1,250,000</td>
                    </tr>

                    <tr  style="background: #333333;">
                      <td style="text-align: center;">5</td>
                      <td style="text-align: center;">Ms. Hosk</td>
                      <td style="text-align: center;">Birthday</td>
                      <td style="text-align: center;">PHP 1,000,000</td>
                    </tr>
                    

                </tbody>
            </table>
          </div>

          <div class="grid-item2 grid-item-2">
            <h5 style="font-size: 1.25em; font-weight: bolder; font-family: Poppins;">EVENT BOOKINGS</h5>
            
            <div id="chart-container">
              <div id="piechart" style="width: 400px; height: 300px;"></div>
            </div>

          </div>
        </div>

        <div class="container-sales2">
            <h3 style="font-size: 1.25em; font-weight: bolder; font-family: Poppins;">EVENT RECORDS</h3>
            <table class="table-records" style="color: #fff;" id="confirmedtable">
                <thead style="font-size: 1em; ">
                    <tr>
                        <th style="text-align: center;">Booking ID</th>
                        <th style="text-align: center;">Name</th>
                        <th style="text-align: center;">Contact</th>
                        <th style="text-align: center;">Address</th>
                        <th style="text-align: center;">Email Address</th>
                        <th style="text-align: center;">Event</th>
                        <th style="text-align: center;">Date</th>
                        <th style="text-align: center;">Amount</th>

                    </tr>
                </thead>

                <?php
                $query = "SELECT * FROM booking WHERE status = 'confirmed' ORDER BY bookdate ASC";
                $bookingresult = mysqli_query($connection, $query);

                while($row = mysqli_fetch_array($bookingresult)) 
                {
                    $id = $row['id'];
                    $booking_id = $row['booking_id'];
                    $firstname = $row['firstname'];
                    $lastname = $row['lastname'];
                    $phone = $row['phone'];
                    $address = $row['address'];
                    $emailadd = $row['emailadd'];
                    $bookdate = $row['bookdate'];
                    $event = $row['event'];
                    $amount = $row['amount'];

                    echo '
                                <tr>
                                    <td style="text-align: center;"> <span style="display: none;">'.$id.'</span>'.$booking_id.' </td>
                                    <td style="text-align: center;"> '.$firstname.' '.$lastname.' </td>
                                    <td style="text-align: center;">'.$phone.' </td>
                                    <td style="text-align: center;">' .$address.' </td>
                                    <td style="text-align: center;"> '.$emailadd.' </td>
                                    <td style="text-align: center;"> '.$event.' </td>    
                                    <td style="text-align: center;"> '.$bookdate.' </td> 
                                    <td style="text-align: center;">PHP '.$amount.'</td>                             
                                </tr>
                                    ';
                }

                ?>

            </table>     
        </div>

    </main>
</body>
</html>



