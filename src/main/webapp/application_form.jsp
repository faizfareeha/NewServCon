<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SBPDCL Application Form</title>
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

<c:if test="${sessionScope.userId != null}">
    <!-- Session is valid, and the 'userId' attribute exists -->
    <!-- Your content for logged-in users goes here -->
    <p>Welcome, ${sessionScope.userId}!</p>
    <!-- Add more content as needed -->
</c:if>

<c:if test="${sessionScope.userId == null}">
    <!-- Session is not valid or 'userId' attribute does not exist -->
    <!-- Your content for non-logged-in users goes here -->
    <p>Please log in to access this page.</p>
    <!-- Add more content as needed -->
</c:if>

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
      <span>Welcome, <strong>${sessionScope.uname}</strong></span><br>  <%-- <%=request.getParameter("name")%> --%>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Menu</h5>
  </div>
  <div class="w3-bar-block">
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="application_form.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-arrow-right"></i>  Application Form</a>
    <a href="application_status.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-arrow-right"></i>  Application Status</a>
    <a href="changeapppwd.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-arrow-right"></i>  Change Password</a>
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
    <h4><b> New Connection</b></h4>
  </header>


<form action="ApplicationServlet" method="post" enctype="multipart/form-data" novalidate>
<div class="container me-5 mt-3 ms-3"> 
<%-- String duplicateSubmission = (String) request.getAttribute("duplicateSubmission"); %>
    <% if ("You Have Already Submitted".equals(duplicateSubmission)) { %>
        <div class="alert alert-danger alert-dismissible fade show text-center me-5" role="alert" id="message-failed">
            <%= duplicateSubmission %>
            <button class="btn-close" aria-label="close" data-bs-dismiss="alert"></button>
        </div>
     <% } --%>  


<c:if test="${not empty requestScope.fileSizeError}">
<div class="alert alert-danger alert-dismissible fade show text-center me-5" role="alert" id="message-failed">
<p>${requestScope.fileSizeError}</p>
<button class="btn-close" aria-label="close" data-bs-dismiss="alert"></</button>
</div>
</c:if>
    
<p class="fs-5 text-danger">* Mandatory Fields(Please upload all docs in jpeg/jpg format except Article of Association And Power of Attorney of HT application which is in pdf format)</p>
<div class="row">
    <div class="col-3">
		<p class="fs-5"> Connection Type: </p>
		</div>
	<div class="col-3">
	<select class="form-select" name="con" id="con" aria-label="Default select example">
  <option value="" selected>---Select---</option>
  <option value="Domestic">Domestic</option>
  <option value="Industrial">Industrial</option>
  <option value="Commercial">Commercial</option>
  <option value="Har Ghar Nal">Har Ghar Nal</option>
  <option value="Public Water Works">Public Water Works</option>
</select>
	</div>
</div>

<!--  <div class="row">
<div class="col-3">
<p class="fs-5">Application ID</p>
</div>
<div class="col-3">
<input class="form-control" type="text" placeholder="Application ID" name="aid" id="aid" pattern="[0-9]+" value="${sessionScope.userid}" readonly/><!-- <p class="text-danger">Please Remember your iD </p> -->
<!--  </div>
</div><br>-->


<div class="row">
<p class="fw-bold fs-5"> 1. Connection Details   :</p>
<div class="col-3">
<p class="fs-5"> Low Tension Supply/High Tension Supply<span class="text-danger">*</span> </p>
</div>
<div class="col-3">
<select class="form-select" name="ltht" id=""ltht aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  <option value="LT">LT</option>
  <option value="HT">HT</option>
</select>
</div>
<p class="fw-bold fs-5">2. Contact Details of Applicant  :</p>
<div class="col-3">
<p class="fs-5"> Mobile No. </p>
</div>
<div class="col-3">
<input class="form-control" type="text" placeholder="Mobile No." name="pno" id="pno" value="${sessionScope.umobile}" pattern="[0-9]{10}"/>
</div>
</div>

<div class="row">
<div class="col-3">
<p class="fs-5">Email</p>
</div>
<div class="col-3">
<input class="form-control" type="email" placeholder="Email" name="email" id="email" value="${sessionScope.uemail}"/>
</div>
</div><br>

<div class="row">
<p class="fw-bold fs-5">3.Address Details -</p>
<p class="fw-bold fs-5">Location of premises where supply is required</p>
</div>

<div class="row">
<div class="col-2">
<p class="fs-5">House No</p>
</div>
<div class="col-3">
<input class="form-control" type="text" name="hno" id="hno"/>
</div>
<div class="col-2">
<p class="fs-5">Street<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<input class="form-control" type="text" name="street" id="street" required/>
</div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Address Line 1</p>
</div>
<div class="col-3">
<input class="form-control" type="text" name="addr1" id="addr1"/>
</div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Address Line 2</p>
</div>
<div class="col-3">
<input class="form-control" type="text" name="addr2" id="addr2"/>
</div>
<div class="col-2">
<p class="fs-5">Address Line 3</p>
</div>
<div class="col-3">
<input class="form-control" type="text" name="addr3" id="addr3"/>
</div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">City<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<input class="form-control" type="text" name="city" id="city" required/>
</div>
<div class="col-2">
<p class="fs-5">Pin Code<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<input class="form-control" type="text" name="pin" id="pin" pattern="[0-9]+" required/>
</div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">District<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<select class="form-select" name="district" id="district" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  <option value="3">Bhojpur</option>
  <option value="4">Darbhanga</option>
  <option value="2">Gaya</option>
  <option value="1">Patna</option>
  </select>
</div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Block<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<select class="form-select" name="block" id="block" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  </select>
</div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Panchayat<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<select class="form-select" name="panchayat" id="panchayat" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  </select>
</div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Village/Ward<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<select class="form-select" name="village" id="village" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  </select></div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Division<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<select class="form-select" name="div" id="div" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  <option value="2">Barh</option>
  <option value="3">Bihta</option>
  <option value="1">Patliputra</option>
  </select></div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">SubDivision<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<select class="form-select" name="subdiv" id="subdiv" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  </select></div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Section<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<select class="form-select" name="section" id="section" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  </select></div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Tariff<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<select class="form-select" name="tariff" id="tariff" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  <option value="KJ">KJ</option>
  <option value="DS1D">DS1D</option>
  <option value="DS3D">DS3D</option>
  </select></div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Phase<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<select class="form-select" name="phase" id="phase" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  <option value="1">1</option>
  <option value="3">3</option>
  </select></div>
</div>
<div class="row">
<div class="col-2">
<p class="fs-5">Load<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<input class="form-control" type="text" name="load" id="load" placeholder="Enter Load" pattern="[0-9]+" required/>
</div><br><br><br>

<div class="row">
<p class="fw-bold fs-5">4.Applicant Details -</p>
<div class="col-2">
<p class="fs-5">Enter Gender<span class="text-danger">*</span></p>
<select class="form-select" name="gen" id="gen" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  <option value="Male">Male</option>
  <option value="Female">Female</option>
  <option value="Third Gender">Third Gender</option>
  </select>
</div>
<div class="col-4">
<p class="fs-5">Enter Applicant Name<span class="text-danger">*</span></p>
<input class="form-control" type="text" name="appname" id="appname" placeholder="Enter Applicant Name" value="${sessionScope.uname}" required/>
</div>
<div class="col-4">
<p class="fs-5">Enter Husband/Father Name<span class="text-danger">*</span></p>
<input class="form-control" type="text" name="hfname" id="hfname" placeholder="Enter Husband/Father Name" required/>
</div>
</div><br><br><br><br>

<div class="row pt-5">
<p class="fw-bold fs-5"> 5. ID Proof of Applicant<span class="fw-normal text-danger">*  [JPEG/JPG Document size must be less than 500 KB & PDF Document size must be less than 10000 KB ]</span></p>
<div class="col-2">
<p class="fs-5">Document Type</p>
</div>
<div class="col-3">
<select class="form-select" name="idproof" id="idproof" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  <option value="Passport">Passport</option>
  <option value="Pan Card">Pan Card</option>
  <option value="Adhaar Card">Adhaar Card</option>
  <option value="Matdaan Pehchaan Patr">Matdaan Pehchaan Patr</option>
  <option value="Driving License">Driving License</option>
  <option value="ID Card Issued by Government">ID Card Issued by Government</option>
  <option value="Rashan Card">Rashan Card</option>
  <option value="BPL (Below Poverty Line)">BPL (Below Poverty Line)</option>
  </select>
</div>
<div class="col-3">
<input type="file" class="form-control" id="idfile" name="idfile" accept=".jpeg, .jpg, .pdf" max="10000000" required><p class="fs-6 text-center">(in jpeg/jpg format)</p>
</div>
</div>

<div class="row pt-3">
<p class="fw-bold fs-5"> 6. Address Proof of Applicant(in jpeg/jpg format)<span class="fw-normal text-danger">*  [Document size must be less than 500 KB ]</span></p>
<div class="col-2">
<p class="fs-5">Document Type</p>
</div>
<div class="col-3">
<select class="form-select" name="addrproof" id="addrproof" aria-label="Default select example" required>
  <option value="" selected>---Select---</option>
  <option value="Passport">Passport</option>
  <option value="Rashan Card">Rashan Card</option>
  <option value="Adhaar Card">Adhaar Card</option>
  <option value="Matdaan Pehchaan Patr">Matdaan Pehchaan Patr</option>
  <option value="Driving License">Driving License</option>
  <option value="Gas Connection Card">Gas Connection Card</option>
  <option value="Bill of Government Landline Connection">Bill of Government Landline Connection</option>
  <option value="Photo Identity Card Issued by Any Government Agency">Photo Identity Card Issued by Any Government Agency</option>
  </select>
</div>
</div>

<div class="row">
<div class="col-4">
<p class="fw-bold fs-5">Front Page of Address Proof<span class="text-danger">*</span></p>
<input type="file" class="form-control" id="faddrfile" name="faddrfile" accept=".jpeg, .jpg, .pdf" max="10000000" required><p class="fs-6">(in jpeg/jpg format)</p>
</div>
<div class="col-4">
<p class="fw-bold fs-5">Last Page of Address Proof<span class="text-danger">*</span></p>
<input type="file" class="form-control" id="laddrfile" name="laddrfile" accept=".jpeg, .jpg, .pdf" max="10000000" required><p class="fs-6">(in jpeg/jpg format)</p>
</div>
</div>

<div class="row pt-5"></div>
<div class="col-4">
<p class="fw-bold fs-5">7. Photo of Applicant<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<input type="file" class="form-control" id="appphoto" name="appphoto" accept=".jpeg, .jpg, .pdf" max="10000000" required><p class="fs-6 text-center">(in jpeg/jpg format)</p>
</div>
</div>
<div class="row pt-3">
<div class="col-4">
<p class="fw-bold fs-5">8. Photo of OwnerShip1(First page of Lease Deed/Rent Agreement/Others)<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<input type="file" class="form-control" id="ownphoto1" name="ownphoto1" accept=".jpeg, .jpg, .pdf" max="10000000" required><p class="fs-6 text-center">(in jpeg/jpg format)</p>
</div>
</div>
<div class="row pt-3">
<div class="col-4">
<p class="fw-bold fs-5">9. Photo of OwnerShip2(Last page of Lease Deed/Rent Agreement/Others)<span class="text-danger">*</span></p>
</div>
<div class="col-3">
<input type="file" class="form-control" id="ownphoto2" name="ownphoto2" accept=".jpeg, .jpg, .pdf" max="10000000" required><p class="fs-6 text-center">(in jpeg/jpg format)</p>
</div>
</div><br>

<input class="btn btn-secondary btn-lg" name="submit" id="submit" type="submit">
</div>
</form>
 </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-16 w3-light-grey">
    <h4>FOOTER</h4>
    <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
  </footer>

  <!-- End page content -->

  
<script>
 
 $(document).on("change", "#district", function() {
	    var distcode = $("#district").val(); // Get the selected district value
	    
	    // Make an AJAX GET request with the distcode parameter
	    $.get("GetB", { distcode: distcode }, function(responseJson) {
	        var $select = $("#block");
	        $select.find("option").remove();  
	        $("#block").append("<option>---Select---</option>");
	        var $select2 = $("#panchayat");
	        $select2.find("option").remove();  
	        $("#panchayat").append("<option>---Select---</option>");
	        var $select3 = $("#village");
	        $select3.find("option").remove();  
	        $("#village").append("<option>---Select---</option>");
	        $.each(responseJson, function(index, dd) {
	            $("<option>").val(dd.id).text(dd.name).appendTo($select);
	        });                   
	    });
	});

 
 $(document).on("change", "#block", function() {
	    var blkcode = $(this).val(); // Get the selected block value
	    
	    // Make an AJAX GET request with the blkcode parameter
	    $.get("GetP", { blkcode: blkcode }, function(responseJson) {
	        var $select = $("#panchayat");
	        $select.find("option").remove();
	        $("#panchayat").append("<option>---Select---</option>");
	        var $select2 = $("#village");
	        $select2.find("option").remove();  
	        $("#village").append("<option>---Select---</option>");
	        $.each(responseJson, function(index, dd) {
	            $("<option>").val(dd.id).text(dd.name).appendTo($select);
	        });                   
	    });
	});

 $(document).on("change", "#panchayat", function() {
	    var pancode = $(this).val(); // Get the selected panchayat value
	    
	    // Make an AJAX GET request with the pancode parameter
	    $.get("GetV", { pancode: pancode }, function(responseJson) {
	        var $select = $("#village");
	        $select.find("option").remove();
	        $("#village").append("<option>---Select---</option>");
	        $.each(responseJson, function(index, dd) {
	            $("<option>").val(dd.id).text(dd.name).appendTo($select);
	        });                   
	    });
	});
 
 
 $(document).on("change", "#div", function() {
	    var divcode = $("#div").val(); // Get the selected division value
	    
	    // Make an AJAX GET request with the divcode parameter
	    $.get("GetSubDiv", { divcode: divcode }, function(responseJson) {
	        var $select = $("#subdiv");
	        $select.find("option").remove();  
	        $("#subdiv").append("<option>---Select---</option>");
	        var $select2 = $("#section");
	        $select2.find("option").remove();  
	        $("#section").append("<option>---Select---</option>");
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
	        $("#section").append("<option>---Select---</option>");
	        $.each(responseJson, function(index, dd) {
	            $("<option>").val(dd.id).text(dd.name).appendTo($select);
	        });                   
	    });
	});


/*$(document).on("click", "#buttonSubmit", function() {
    var params = {category : $("#dropdownlist option:selected").text()};
    $.post("listajax", $.param(params), function(responseText) {
        alert(responseText);                   
    });
});*/

/* $(document).ready(function() {
    // Capture the form submit event

        // Create a FormData object to store form data and files
        var formData = new FormData(this);

        // Send the data to the server using Ajax
        $.ajax({
            url: "FileUploadServlet", // URL to submit the form data to
            method: "GET",
            data: formData,
            processData: false, // Don't process the data
            contentType: false, // Don't set content type (let the server handle it)
            success: function(response) {
                // Handle the server response here
                console.log(response);
            },
            error: function(error) {
                // Handle errors here
                console.error("Error: " + error);
            }
        });
    });
});*/

const form = document.querySelector("form")
form.addEventListener('submit',e=>{
	if(!form.checkValidity()) {
		e.preventDefault()
	}
	form.classList.add('was-validated')
})
</script>

<!-- 
<script type="text/javascript">
      $(document).ready(function () {
        $.ajax({
          url: "GetDBPVServlet",
          method: "GET",
          data: {
            operation: "district",
          },
          success: function (data, textStatus, jqXHR) {
            console.log(data);
            var obj = $.parseJSON(data);
            $.each(obj, function (key, value) {
              $("#district").append(
                '<option value="' + value.id + '">' + value.name + "</option>"
              );
            });
            $("select").formSelect();
          },
          error: function (jqXHR, textStatus, errorThrown) {
            $("#district").append("<option>District Unavailable</option>");
          },
          cache: false,
        });

        $("#district").change(function () {
          $("#block").find("option").remove();
          $("#block").append("<option>---Select---</option>");
          $("#panchayat").find("option").remove();
          $("#panchayat").append("<option>---Select---</option>");
          $("#village").find("option").remove();
          $("#village").append("<option>---Select---</option>");

          var did = $("#district").val();
          var data = {
            operation: "block",
            id: did,
          };
          
          $.ajax({
            url: "GetDBPVServlet",
            method: "GET",
            data: data,
            success: function (data, textStatus, jqXHR) {
              console.log(data);
              var obj = $.parseJSON(data);
              $.each(obj, function (key, value) {
                $("#block").append(
                  '<option value="' + value.id + '">' + value.name + "</option>"
                );
              });
              $("select").formSelect();
            },
            error: function (jqXHR, textStatus, errorThrown) {
              $("#block").append("<option>Block Unavailable</option>");
            },
            cache: false,
          });
        });

        $("#block").change(function () {
          $("#panchayat").find("option").remove();
          $("#panchayat").append("<option>---Select---</option>");
          $("#village").find("option").remove();
          $("#village").append("<option>---Select---</option>");

          var bid = $("#block").val();
          var data = {
            operation: "panchayat",
            id: bid,
          };
          
          $.ajax({
              url: "GetDBPVServlet",
              method: "GET",
              data: data,
              success: function (data, textStatus, jqXHR) {
                console.log(data);
                var obj = $.parseJSON(data);
                $.each(obj, function (key, value) {
                  $("#panchayat").append(
                    '<option value="' + value.id + '">' + value.name + "</option>"
                  );
                });
                $("select").formSelect();
              },
              error: function (jqXHR, textStatus, errorThrown) {
                $("#panchayat").append("<option>Panchayat Unavailable</option>");
              },
              cache: false,
            });
          });

          $("#panchayat").change(function () {
            $("#village").find("option").remove();
            $("#village").append("<option>---Select---</option>");

            var pid = $("#panchayat").val();
            var data = {
              operation: "village",
              id: pid,
            };
          
          $.ajax({
            url: "GetDBPVServlet",
            method: "GET",
            data: data,
            success: function (data, textStatus, jqXHR) {
              console.log(data);
              var obj = $.parseJSON(data);
              $.each(obj, function (key, value) {
                $("#village").append(
                  '<option value="' + value.id + '">' + value.name + "</option>"
                );
              });
              $("select").formSelect();
            },
            error: function (jqXHR, textStatus, errorThrown) {
              $("#village").append("<option>Village Unavailable</option>");
            },
            cache: false,
          });
        });
      });
    </script>
-->
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