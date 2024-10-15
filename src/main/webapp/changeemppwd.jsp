<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SBPDCL Official</title>
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
      <span>Welcome, <strong>${sessionScope.oname}</strong></span><br>  <%-- <%=request.getParameter("name")%> --%>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Menu</h5>
  </div>
  <div class="w3-bar-block">
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="official.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-arrow-right"></i>  Profile</a>
    <a href="GetAppListServlet" class="w3-bar-item w3-button w3-padding"><i class="fa fa-arrow-right"></i>  User Applications</a>
    <a href="changeemppwd.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-arrow-right"></i>  Change Password</a>
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
    <h4 class="text-center"><b>Change Password</b></h4>
  </header>
  
  <div class="container d-flex justify-content-center" style="align-content: center;">
<div class="border border-2 rounded bg-white">
<div class="row  m-4">
        <div class="col p-2 m-2">


<form novalidate action="ChangePasswordServlet">
    <!-- <input type="text" class="form-control" id="userId" name="userId" placeholder="User Id" required><br> -->
    <input type="password" class="form-control" id="currentPassword" name="currentPassword" placeholder="Current Password" required>
    <input class="form-check-input" type="checkbox" onclick="myFunction()"> Show Password<br><br>
    <input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="New Password" required onkeyup='check();'>
    <input class="form-check-input" type="checkbox" onclick="myFunction2()"> Show Password<br><br>
    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required onkeyup='check();'><span id='message'></span>
    <input class="form-check-input" type="checkbox" onclick="myFunction3()"> Show Password<br><br>
    <div class="text-center">
    <input type="submit" class="btn btn-secondary" value="Change Password">
    </div>
</form>


</div>
</div>
</div>
</div> 
<div class="container my-3 p-2">
<% String message = (String) request.getAttribute("message"); %>
    <% if ("Password changed successfully".equals(message)) { %>
        <div class="alert alert-success alert-dismissible fade show text-center" role="alert" id="message-success">
            <%= message %>
            <button class="btn-close" aria-label="close" data-bs-dismiss="alert"></button>
        </div>
    <% } else if ("Password change failed. Please check your current password and the new password.".equals(message)) { %>
        <div class="alert alert-danger alert-dismissible fade show text-center" role="alert" id="message-failed">
            <%= message %>
            <button class="btn-close" aria-label="close" data-bs-dismiss="alert"></button>
        </div>
     <% } %>   
</div>
<br>
  </div>
  
  
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

<script>
	var myInput = document.getElementById("newPassword");
	var myInput2 = document.getElementById("confirmPassword");
	
	myInput2.onfocus = function() {
		  document.getElementById("message").style.display = "block";
		}
	myInput2.onblur = function() {
		  document.getElementById("message").style.display = "none";
		}
	myInput.onfocus = function() {
		  document.getElementById("message").style.display = "block";
		}
	myInput.onblur = function() {
		  document.getElementById("message").style.display = "none";
		}
	var check = function() {
		  if (document.getElementById('pwd').value ==
		    document.getElementById('repwd').value) {
		    document.getElementById('message').style.color = 'green';
		    document.getElementById('message').innerHTML = 'Matching';
		  } else {
		    document.getElementById('message').style.color = 'red';
		    document.getElementById('message').innerHTML = 'Not matching';
		  }
		}
	
	function validatePassword(){
	  if(myInput.value != myInput2.value) {
		  myInput2.setCustomValidity("Passwords Don't Match");
	  } else {
		  myInput2.setCustomValidity('');
	  }
	}
	myInput.onchange = validatePassword;
	myInput2.onkeyup = validatePassword;
	
	function myFunction() {
		  var x = document.getElementById("currentPassword");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}
	function myFunction2() {
		  var x = document.getElementById("newPassword");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}
	function myFunction3() {
		  var x = document.getElementById("confirmPassword");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}	

	
	const form = document.querySelector("form")
	form.addEventListener('submit',e=>{
		if(!form.checkValidity()) {
			e.preventDefault()
		}
		form.classList.add('was-validated')
	})
	

	
	</script>
</body>
</html>