<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> Administrator </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <!-- Custom Theme Style -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/custom.min.css">
	
</head>
<body class="nav-md">
    <div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a class="site_title"><span> Research Record Management System </span></a>
					</div>
					<div class="clearfix"></div>
			<!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="img/final.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span> <?php echo strtoupper($accname) ?> </span>
                <h2> <?php echo strtoupper($acctype) ?> </h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <div class="nav side-menu">
					<ul><a href="admindashboard.php"> DOCUMENTS </span></a></ul>
					<ul><a href="updateAcc.php"> UPDATE ACCOUNT </a></ul>
					<ul><a class= "dashboard-active" href="#code"> ACCESS CODE </a> </ul>      
					<ul><a href="reports.php"> REPORTS </a> </ul> </br>      
					<ul><button id= "btn-logout"><strong> <a href="#Logout"> LOGOUT </a></strong></button></ul>
                </div>
              </div>

            </div>
          </div>
        </div>
       
        <!-- page content -->
        <div class="right_col" role="main">
			<div id= "admin-frm-container" class="frm-container" style="margin: auto; width: 80%">
				<center><h1> GENERATE ACCESS CODE </h1></center>
			<hr></br>
			<form id= "admin-frm-generatepass" class= "frm-generatepass" action="/action_page.php">
				<table style="font-size: 15px">
					<tr> 
						<td> <b> Number of Access Code: </b> </td>
						<td> <input type="number" placeholder="0" name="number" style= "width: 30%" required> </td>
					</tr>
				</table>
			</form></br></br>
			<hr></br>
			<button type="submit" id= "admin-btn-generate" class="btn-generate"> GENERATE </button>
		</div>
          <!-- top tiles -->
          <div class="row tile_count"></div>
          <!-- /top tiles -->
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

      </div>
    </div>

    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="js/custom.min.js"></script>
	
  </body>
</html>