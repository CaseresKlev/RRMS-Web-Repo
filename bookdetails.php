<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="css/bookdet.css">
</head>
  <header>
    <?php include_once 'header.php';?>
  </header>
<body>

  <?php
  include_once 'connection.php';
  $dbconfig = new dbconfig();
  $conn = $dbconfig->getCon();
  $id = $_GET['book_id'];
  $query = "select * from book where book_id = $id";
  $result = $conn->query($query);
  if($result-> num_rows > 0){
    while ($row = $result->fetch_assoc()) {

   ?>

  <div class="wrapper">
<table bgcolor="#ffffff" width="100%" height="326">
  <tr >

    <td width="40%"height="350px" id="col1"> <img src="<?php echo $row['cover']?>" style="display:block"; width="100%" height="100%"></td>
    <td id="col2">
      <table height=100%>
        <tr>
          <td id="booktitle" class"det"><strong><?php echo $row['book_title']; ?></strong>
            <hr>
          </td>

        </tr>
        <tr class"det">


          <td>Author:
          <?php
  				$dbconfig= new dbconfig();
  				$con= $dbconfig -> getCon();
  				$query= "SELECT DISTINCT(a_id) as 'a_id' , a_lname as 'a_lname', SUBSTRING(a_fname, 1, 1) as 'a_fname' FROM author INNER JOIN junc_authorbook on author.a_id = junc_authorbook.aut_id";
  				$result = $con -> query($query);
  				$autorList ="";
  				if($result->num_rows>0){
  					while ($row1 = $result->fetch_assoc()) {
  					//	$autorList .= $row['a_lname'] . ", " . $row['a_fname'] . "; ";
            ?>
            <a href="author.php?aut_id=<?php echo $row1['a_id']; ?>">  <?php echo $row1['a_lname'] . ", " . $row1['a_fname'] . "; ";?>
              </a>
        <?php }
      } ?>
      </td>
        </tr>
        <td>

        </td>
        <td>

        </td>
        <tr class"det">
          <td>Date Submitted: <?php echo $row['pub_date']; ?></td>
        </tr>
        <tr class"det">
          <td>Revision: 2</td>
        </tr>
        <tr class"det">
          <td>Status: Unpublish</td>
        </tr>
        <tr class"det">
          <td>Views:<?php echo " " .  $row['views_count']; ?></td>
        </tr>
        <tr >
          <td>Keywords: fdf,dfdf,fdfdf</td>
        </tr>
        <tr >
          <td>Cited: 5 Times</td>
        </tr>
        <tr >
          <td><h4>Download</h4></td>
        </tr>



      </table>
    

    </td>
  </tr>
  <tr>

    <td colspan="2">
      <hr>
      <strong style="font-size: 20pt;"><em>Abstract:</em></strong><br/>
      <p>&emsp;<?php echo $row['abstract'];?>
      </p>
    </td>

  </tr>
<?php }
} ?>
  <tr>
    <td colspan="2">
      <hr>

      <strong style="font-size: 20pt;"><em>References:</em></strong><br/>
      <ul>

        <?php
        $dbconfig= new dbconfig();
        $con= $dbconfig -> getCon();
        $query= "SELECT ref.id, ref.link FROM ref INNER JOIN junk_bookref ON ref.id = junk_bookref.webref_id WHERE book_id = 1";
        $result = $con -> query($query);
        if ($result->num_rows>0) {
          while ($row2=$result->fetch_assoc()) {

         ?>
        <a href="#"><li><?php echo $row2['link'];?></li></a>
      <?php }
    } ?>

      </ul>
      <hr>
    </td>

  </tr>

</table>

</div>
<div class="foot">

  </div>
</body>

</html>