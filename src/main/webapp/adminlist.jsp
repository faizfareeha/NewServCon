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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <a href="admin.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-arrow-right"></i>  Create Employee</a>
    <a href="GetEmpListServlet" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-arrow-right"></i>  List Employee</a>
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
    <h4 class="text-center"><b> Employees</b></h4>
  </header>
    <form action="SearchEmpServlet">
    <div class="row mx-1 gx-3">
    <div class="col-2">
    <div class="input-group input-group-sm mb-3">
    <input type="text" class="form-control" id="division" name="division" placeholder="Enter Division" aria-describedby="inputGroup-sizing-sm">
    </div>
    </div>
    <div class="col">
    <button class="btn btn-dark btn-sm" type="submit">Search</button>
    </div>
    </div>
</form>
  <div class="container d-flex mt-3">
  <table id="formTable" class="table table-striped table-hover">
    <thead class="table-dark">
        <tr>
            <th scope="col">Employee ID</th>
            <th scope="col">Employee Name</th>
            <th scope="col">Email</th>
            <th scope="col">Mobile</th>
            <th scope="col">Division</th>
            <th scope="col">Subdivision</th>
            <th scope="col">Section</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="empDetails" items="${empDetailsList}">
            <tr>
                <td>${empDetails.userId}</td>
                <td>${empDetails.name}</td>
                <td>${empDetails.email}</td>
                <td>${empDetails.mobile}</td>
                <td>${empDetails.division}</td>
                <td>${empDetails.subdivision}</td>
                <td>${empDetails.section}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
  </div>  
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
</body>
</html>