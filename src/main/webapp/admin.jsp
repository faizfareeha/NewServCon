<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SBPDCL Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-dark-grey.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style> -->


</head>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-theme-l3 w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  <div class="container-fluid d-flex justify-content-center">
  <div class="row gx-1">
  <div class="col mt-2">
  <img src="https://upload.wikimedia.org/wikipedia/en/f/f0/SBPDCL_logo.gif" alt="logo" width="57" height="57"></div>
  <div class="col mt-3">
    <span class="navbar-brand mb-0 h1 fw-bold">SOUTH BIHAR POWER DISTRIBUTION COMPANY LTD</span>
	<p class="fs-6">GOVERNMENT OF BIHAR</p>
  </div>
  </div>  
  </div>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row mt-4 pt-2">
    <div class="w3-col s4">
     
    </div>
    <div class="w3-col s8 w3-bar w3-large">
      <span>Welcome, <strong>Admin</strong></span><br>  <%-- <%=request.getParameter("name")%> --%>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Menu</h5>
  </div>
  <div class="w3-bar-block">
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="admin.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-arrow-right"></i>  Create Employee</a>
    <a href="GetEmpListServlet" class="w3-bar-item w3-button w3-padding"><i class="fa fa-arrow-right"></i>  List Employee</a>
    <a href="admindelete.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-arrow-right"></i>  Delete Employee</a>
    <a href="LogoutServlet" class="w3-bar-item w3-button w3-padding"><i class="fa fa-arrow-right"></i>  Logout</a>
<br><br>
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main mt-5 pt-3" style="margin-left:310px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h4 class="text-center"><b> Create Employee</b></h4>
  </header>
  
  <div class="container d-flex justify-content-center" style="align-content: center;">
<div class="border border-2 rounded bg-white">
<div class="row  m-4">
        <div class="col p-2 m-2">


  
	<form action="EmpReg">


 <div class="row">
 
	      

	<input class="form-control" type="text" placeholder="Employee ID" name="uid" id="uid" required/><br>
	<!--<label class="form-label" for="uid"> User ID:</label>    -->
	</div>
  <br>
  <div class="row">
    
	<input class="form-control" type="text" placeholder="Full Name" name="name" id="name" required/><br>
	
	</div>
 <br>


	<div class="row">

	<!-- <label for="email">Email: </label> -->
	<input class="form-control" type="email" placeholder="Email" name="email" id="email" required/> <br>
	</div>
	<br>
	<div class="row">
	
    <div class="input-group">
    <div class="input-group-text">+91</div>
	<input class="form-control" type="tel" placeholder="Mobile Number" name="mno" id="mno" pattern="[0-9]{10}" required>
	<div class="invalid-feedback">Please Enter Your 10-digit Phone Number.</div>
	</div>
	</div>
<br>


	<div class="row">
	<!-- <label for="pwd">Password: </label> -->
	<input class="form-control" type="password" placeholder="Pasword" name="pwd" id="pwd" onkeyup='check();' />
	<input class="form-check-input" type="checkbox" onclick="myFunction()"> Show Password
	</div>
	<br>
	
<div class="row">

<select class="form-select" name="div" id="div" aria-label="Default select example" required>
  <option value="" selected>Division</option>
  <option value="2">Barh</option>
  <option value="3">Bihta</option>
  <option value="1">Patliputra</option>
  </select>
  </div><br>

<div class="row">

<select class="form-select" name="subdiv" id="subdiv" aria-label="Default select example" required>
  <option value="" selected>Subdivison</option>
  </select>
  </div><br>

<div class="row">

<select class="form-select" name="section" id="section" aria-label="Default select example" required>
  <option value="" selected>Section</option>
  </select>
  </div>
  <br><br>

  		
  	
<div class="text-center">
	<input class="btn btn-secondary" type="submit" value="Create"><br>
	
</div>

</form>
</div>
</div>
</div>
</div> 
<br>
  </div>
  
  <script type="text/javascript">
  function myFunction() {
	  var x = document.getElementById("pwd");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
  
  
  $(document).on("change", "#div", function() {
	    var divcode = $("#div").val(); // Get the selected division value
	    
	    // Make an AJAX GET request with the divcode parameter
	    $.get("GetSubDiv", { divcode: divcode }, function(responseJson) {
	        var $select = $("#subdiv");
	        $select.find("option").remove();  
	        $("#subdiv").append("<option>Subdivison</option>");
	        var $select2 = $("#section");
	        $select2.find("option").remove();  
	        $("#section").append("<option>Section</option>");
	        $.each(responseJson, function(index, dd) {
	            $("<option>").val(dd.id).text(dd.name).appendTo($select);
	        });                   
	    });
	});


$(document).on("change", "#subdiv", function() {
	    var sdcode = $(this).val(); // Get the selected subdiv value
	    
	    // Make an AJAX GET request with the sdcode parameter
	    $.get("GetSec", { sdcode: sdcode }, function(responseJson) {
	        var $select = $("#section");
	        $select.find("option").remove();
	        $("#section").append("<option>Section</option>");
	        $.each(responseJson, function(index, dd) {
	            $("<option>").val(dd.id).text(dd.name).appendTo($select);
	        });                   
	    });
	});
  </script>
  
  <script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
</script>
</body>
</html>