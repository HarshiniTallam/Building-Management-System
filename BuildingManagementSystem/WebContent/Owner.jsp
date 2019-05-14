<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 25px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

.topnav-right {
  float: right;
}
.overlay {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  margin: 70px auto;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 30%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close {
  position: absolute;
  top: 20px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: #06D85F;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
}

</style>

</head>
<body>
<div class="topnav">
<div class="topnav-right">
    <a href="Logout.jsp">LOGOUT</a>
</div>
</div>


<div class="container">
  <h2><strong>Hii Owner!!</strong></strong></h2>
  <div class="alert alert-success">
    <a href="DisplayAllRoomDetails" class="alert-link">FLATS</a>.
  </div>
  <div class="alert alert-info">
    <a href="DisplayAllLandlordDetails" class="alert-link">LANDLORDS</a>.
  </div>
  <div class="alert alert-success">
    <a href="RegisterLandlord.jsp" class="alert-link">REGISTER LANDLORD</a>.
  </div>
  <div class="alert alert-warning">
    <a href="DisplayFacilities" class="alert-link">FACILITIES</a>.
  </div>
  <div class="alert alert-danger">
    <a href="#popup1" class="alert-link">FLATS IN THE PARTICULAR FLOOR</a>.
  </div>
   <div class="alert alert-danger">
    <a href="AddFacility.jsp" class="alert-link">ADD FACILITY</a>.
  </div>
  
</div>

<div id="popup1" class="overlay">
	<div class="popup">
		<a class="close" href="#" >&times;</a>
		<div class="content">
			<form action="getRoomsDetailsByFloorNo" method="POST">
                Enter Floor No :<input type="text" name="fid"><br/>
                <input type="submit" value="SUBMIT">
			</form> 
		</div>
	</div>
</div>



</body>
</html>

