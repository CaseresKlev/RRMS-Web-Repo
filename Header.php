<!DOCTYPE html>
<html>
<title> Header </title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href= "css/header.css">
<link rel="stylesheet" href= "css/search2.css">

</head>

<body class= "header_body" style= "'width: 70%">
<div class="header" style= "width= 100%">
	<div class= "subheader"><span><img class="logo1" src="img/1.png"> <img class= "logo2" src="img/BukSU Logo.png"></span></div>
  <div class="header_banner"><span> Research Record Management System</span></div>	

  <div class="header_nav">
	<a id= "navi" href="#home">Home</a>
    <a id= "navi" href="#books">Books</a>
    <a id= "navi" href="#plagiarism">Plagiarism</a>
	<a class="header_login" href="#login">Login</a>
	<button class= "header_btn"> Search </button>
  </div>
  <div style= "display: none;" class="header_search-container">
	
		<form action="searchcontent.php">
		<table id="tbl_search">
			<tr> 
				<td> </td>
				<td> </td>
				<td> </td>
			</tr>
			<tr> 
				<td> </td>
				<td> <input type="text" placeholder="Search.." name="search"> </td>
				<td> <button type="submit"> Search </button> </td>
			</tr>
			<tr> 
				<td>
					
					<label class="tbl-search_container" id="search_title"> Title <input type="radio" checked="checked" name="radio">
						<span class="tbl-search_checkmark"></span>
					</label>
				</td>
				<td> 
					
					<label class="tbl-search_container" id="search_content"> Content <input type="radio" name="radio">
						<span class="tbl-search_checkmark"></span>
					</label>
				</td>
				<td> 
					
					<label class="tbl-search_container" id="search_key"> Keywords <input type="radio" name="radio">
						<span class="tbl-search_checkmark"></span>
					</label>
				</td>
			</tr>
		</table>
		</form>
  </div>
</div>
<script type= "text/javascript" src= "js/jquery-3.3.1.js"></script>
<script type= "text/javascript" src= "js/header.js"></script>

</body>
</html>
<!--TAPAYAN -->