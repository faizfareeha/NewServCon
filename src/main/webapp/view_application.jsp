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
    <a href="GetAppListServlet" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-arrow-right"></i>  User Applications</a>
    <a href="changeemppwd.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-arrow-right"></i>  Change Password</a>
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
    <h4 class="text-center"><b> Applications</b></h4>
  </header>
  <div class="container d-flex mt-3">
  <table id="formTable" class="table table-striped table-hover">
    <thead class="table-dark">
        <tr>
            <th scope="col">Application ID</th>
            <th scope="col">Applicant Name</th>
            <th scope="col">Division</th>
            <th scope="col">Verification Status</th>
            <th scope="col">Action</th>
            
        </tr>
    </thead>
    <tbody>
        <c:forEach var="applicationDetails" items="${applicationDetailsList}">
            <tr>
                <td>${applicationDetails.app_id}</td>
                <td>${applicationDetails.appl_name}</td>
                <td>${applicationDetails.division}</td>
                <td>${applicationDetails.status}</td>
                <td><button id="viewDetailsButton" type="button" class="btn btn-outline-dark btn-sm"
                data-con-type="${applicationDetails.con_type}"
                data-app-id="${applicationDetails.app_id}"
          		data-ltht-supp="${applicationDetails.ltht_supp}"
          		data-mob-no="${applicationDetails.mob_no}"
          		data-email-id="${applicationDetails.email_id}"
          		data-house-no="${applicationDetails.house_no}"
          		data-street="${applicationDetails.street}"
          		data-addr1="${applicationDetails.address1}"
          		data-addr2="${applicationDetails.address2}"
          		data-addr3="${applicationDetails.address3}"
          		data-city="${applicationDetails.city}"
          		data-pin="${applicationDetails.pin}"
          		data-d-name="${applicationDetails.district}"
          		data-block-name="${applicationDetails.block}"
          		data-panchayat-name="${applicationDetails.panchayat}"
          		data-village-name="${applicationDetails.village}"
          		data-div-name="${applicationDetails.division}"
          		data-subdiv-name="${applicationDetails.sub_div}"
          		data-section-name="${applicationDetails.section}"
          		data-tariff="${applicationDetails.tariff}"
          		data-phase-val="${applicationDetails.phase_val}"
          		data-load-val="${applicationDetails.load_val}"
          		data-gender="${applicationDetails.gender}"
          		data-appl-name="${applicationDetails.appl_name}"
          		data-fh-name="${applicationDetails.fh_name}"
          		data-id-proof-type="${applicationDetails.id_proof_type}"
          		data-id-proof-file="${applicationDetails.id_proof_file}"
          		data-addr-proof-type="${applicationDetails.addr_proof_type}"
          		data-addr-proof1="${applicationDetails.addr_proof1}"
          		data-addr-proof2="${applicationDetails.addr_proof2}"
          		data-appl-photo="${applicationDetails.appl_photo}"
          		data-ownship-photo1="${applicationDetails.ownship_photo1}"
          		data-ownship-photo2="${applicationDetails.ownship_photo2}"
          		data-status="${applicationDetails.status}">View Details</button></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
  </div>  
  </div>
  <script>
  // JavaScript in your JSP
document.addEventListener('DOMContentLoaded', function() {
  var buttons = document.querySelectorAll('#viewDetailsButton');
  buttons.forEach(function(button) {
    button.addEventListener('click', function() {
      var conType = this.getAttribute('data-con-type');	
      var appId = this.getAttribute('data-app-id');
      var ltht = this.getAttribute('data-ltht-supp');
      var mobile = this.getAttribute('data-mob-no');
      var email = this.getAttribute('data-email-id');
      var house = this.getAttribute('data-house-no');
      var street = this.getAttribute('data-street');
      var addr1 = this.getAttribute('data-addr1');
      var addr2 = this.getAttribute('data-addr2');
      var addr3 = this.getAttribute('data-addr3');
      var city = this.getAttribute('data-city');
      var pin = this.getAttribute('data-pin');
      var disName = this.getAttribute('data-d-name');
      var blockName = this.getAttribute('data-block-name');
      var panchayatName = this.getAttribute('data-panchayat-name');
      var villageName = this.getAttribute('data-village-name');
      var divName = this.getAttribute('data-div-name');
      var subdivName = this.getAttribute('data-subdiv-name');
      var sectionName = this.getAttribute('data-section-name');
      var tariff = this.getAttribute('data-tariff');
      var phase = this.getAttribute('data-phase-val');
      var load = this.getAttribute('data-load-val');
      var gender = this.getAttribute('data-gender');
      var applName = this.getAttribute('data-appl-name');
      var fhName = this.getAttribute('data-fh-name');
      var idType = this.getAttribute('data-id-proof-type');
      var idFile = this.getAttribute('data-id-proof-file');
      var addrType = this.getAttribute('data-addr-proof-type');
      var addrFile1 = this.getAttribute('data-addr-proof1');
      var addrFile2 = this.getAttribute('data-addr-proof2');
      var appPhoto = this.getAttribute('data-appl-photo');
      var ownPhoto1 = this.getAttribute('data-ownship-photo1');
      var ownPhoto2 = this.getAttribute('data-ownship-photo2');
      var status = this.getAttribute('data-status');
      
      // Construct the URL with the query parameters
      var popupUrl = 'popup.jsp?appId=' + appId +
                     '&applName=' + applName +
                     '&ltht=' + ltht +
                     '&conType=' + conType +
                     '&mobile=' + mobile +
                     '&email=' + email +
      				 '&house=' + house +
      				 '&street=' + street+
					 '&addr1=' + addr1+
      				 '&addr2=' + addr2+
         			 '&addr3=' + addr3+
      				 '&city=' + city+
      				 '&pin=' + pin+
      				 '&disName=' + disName+
      				 '&blockName=' + blockName+
      				 '&panchayatName=' + panchayatName+
      				 '&villageName=' + villageName+
     				 '&divName=' + divName+
     				 '&subdivName=' + subdivName+
     				 '&sectionName=' + sectionName+
     				 '&tariff=' + tariff+
     				 '&phase=' + phase+
     				 '&load=' + load+
     				 '&gender=' + gender+
     				 '&applName=' + applName+
     				 '&fhName=' + fhName+
     				 '&idType=' + idType+
    			     '&idFile=' + idFile+
     				 '&addrType=' + addrType+
     				 '&addrFile1=' + addrFile1+
     				 '&addrFile2=' + addrFile2+
     				 '&appPhoto=' + appPhoto+
     				 '&ownPhoto1=' + ownPhoto1+
     				 '&ownPhoto2=' + ownPhoto2+
    			     '&status=' + status;
                     
      // Open the popup window with specified dimensions
      var popupWindow = window.open(popupUrl, 'Application Details', 'width=600,height=900');
      
      // Focus on the popup window (optional)
      if (popupWindow) {
        popupWindow.focus();
      }
    });
  });
});
  </script>
  
<!-- <script>
  // Function to open the popup window with application details
  function openPopup(applicationId,applicantName) {
    // Construct the URL with the application ID (you can add more parameters as needed)
    var popupUrl = 'popup.html?appId=' + applicationId, '&applicantName=' + encodeURIComponent(applicantName);

    // Open the popup window with specified dimensions
    var popupWindow = window.open(popupUrl, 'Application Details', 'width=600,height=400');
    
    // Focus on the popup window (optional)
    if (popupWindow) {
      popupWindow.focus();
    }
  }

  // Add a click event listener to all "View Details" buttons
  var buttons = document.querySelectorAll('#viewDetailsButton');
  buttons.forEach(function(button) {
    button.addEventListener('click', function() {
      // Extract the application ID from the row data
      var row = this.parentNode.parentNode; // Get the row containing the button
      var applicationId = row.cells[0].textContent; // Assumes the ID is in the first cell
      var applicantName = row.cells[1].textContent;
      
      // Call the openPopup function with the application ID
      openPopup(applicationId,applicantName);
    });
  });
</script>-->

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