<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<div class="container d-xxl-flex justify-content-around align-items-center py-3">
<div class="border border-2 rounded bg-white">
<div class="row  m-2">
<div class="col p-2 m-2">
<h1 class="text-center">Application Details</h1><br>
    <div id="details">
        <p><strong>Connection Type:</strong> <span id="conType"></span></p>
        <p><strong>Application ID:</strong> <span id="appId"></span></p>
        <p><strong>LT/HT Supply:</strong> <span id="ltht"></span></p>
        <p><strong>Mobile:</strong> <span id="mobNo"></span></p>
        <p><strong>Email:</strong> <span id="email"></span></p>
        <p><strong>House No:</strong> <span id="houseNo"></span></p>
        <p><strong>Street:</strong> <span id="street"></span></p>
        <p><strong>Address 1:</strong> <span id="address1"></span></p>
        <p><strong>Address 2:</strong> <span id="address2"></span></p>
        <p><strong>Address 3:</strong> <span id="address3"></span></p>
        <p><strong>City:</strong> <span id="city"></span></p>
        <p><strong>Pin Code:</strong> <span id="pin"></span></p>
        <p><strong>District:</strong> <span id="district"></span></p>
        <p><strong>Block:</strong> <span id="block"></span></p>
        <p><strong>Panchayat:</strong> <span id="panchayat"></span></p>
        <p><strong>Village/Ward:</strong> <span id="village"></span></p>
        <p><strong>Division:</strong> <span id="division"></span></p>
        <p><strong>SubDivision:</strong> <span id="subdivision"></span></p>
        <p><strong>Section:</strong> <span id="section"></span></p>
        <p><strong>Tariff:</strong> <span id="tariff"></span></p>
        <p><strong>Phase:</strong> <span id="phaseVal"></span></p>
        <p><strong>Load:</strong> <span id="loadVal"></span></p>
        <p><strong>Gender:</strong> <span id="gender"></span></p>
        <p><strong>Applicant Name:</strong> <span id="appName"></span></p>
        <p><strong>Husband/Father's Name:</strong> <span id="fhName"></span></p>
        <p><strong>ID Proof Document Type:</strong> <span id="idProofType"></span></p>
        <p><strong>ID Proof of Applicant:</strong> <span id="idProofFile"></span> <br> <img id="image1" src="" width="250" height="250"> </p>
        <p><strong>Address Proof Document Type:</strong> <span id="addrProofType"></span></p>
        <p><strong>Front Page of Address Proof:</strong> <span id="addrProof1"></span> <br> <img id="image2" src="" width="250" height="250"> </p>
        <p><strong>Last Page of Address Proof:</strong> <span id="addrProof2"></span> <br> <img id="image3" src="" width="250" height="250"> </p>
        <p><strong>Photo of Applicant:</strong> <span id="applPhoto"></span> <br> <img id="image4" src="" width="250" height="250"> </p>
        <p><strong>Photo of OwnerShip1:</strong> <span id="ownshipPhoto1"></span> <br> <img id="image5" src="" width="250" height="250"> </p>
        <p><strong>Photo of OwnerShip2:</strong> <span id="ownshipPhoto2"></span> <br> <img id="image6" src="" width="250" height="250"> </p>
        <p><strong>Verification Status:</strong> <span id="status"></span></p>
        <form id="verificationForm" action="UpdateVerificationStatusServlet">
		<input type="hidden" id="applicationId" name="applicationId"/>
		<div class="text-center"><input type="submit" value="Verify" id="verifyButton" class="btn btn-primary"></div>
        </form>
    </div>
</div>
</div>
</div>
</div>
    <script>
        // JavaScript code to populate the popup with query parameters
        var urlParams = new URLSearchParams(window.location.search);
        document.getElementById('conType').textContent = urlParams.get('conType');
        document.getElementById('appId').textContent = urlParams.get('appId');
        document.getElementById('ltht').textContent = urlParams.get('ltht');
        document.getElementById('mobNo').textContent = urlParams.get('mobile');
        document.getElementById('email').textContent = urlParams.get('email');
        document.getElementById('houseNo').textContent = urlParams.get('house');
        document.getElementById('street').textContent = urlParams.get('street');
        document.getElementById('address1').textContent = urlParams.get('addr1');
        document.getElementById('address2').textContent = urlParams.get('addr2');
        document.getElementById('address3').textContent = urlParams.get('addr3');
        document.getElementById('city').textContent = urlParams.get('city');
        document.getElementById('pin').textContent = urlParams.get('pin');
        document.getElementById('district').textContent = urlParams.get('disName');
        document.getElementById('block').textContent = urlParams.get('blockName');
        document.getElementById('panchayat').textContent = urlParams.get('panchayatName');
        document.getElementById('village').textContent = urlParams.get('villageName');
        document.getElementById('division').textContent = urlParams.get('divName');
        document.getElementById('subdivision').textContent = urlParams.get('subdivName');
        document.getElementById('section').textContent = urlParams.get('sectionName');
        document.getElementById('tariff').textContent = urlParams.get('tariff');
        document.getElementById('phaseVal').textContent = urlParams.get('phase');
        document.getElementById('loadVal').textContent = urlParams.get('load');
        document.getElementById('gender').textContent = urlParams.get('gender');
        document.getElementById('appName').textContent = urlParams.get('applName');
        document.getElementById('fhName').textContent = urlParams.get('fhName');
        document.getElementById('idProofType').textContent = urlParams.get('idType');
        document.getElementById('idProofFile').textContent = urlParams.get('idFile');
        document.getElementById('addrProofType').textContent = urlParams.get('addrType');
        document.getElementById('addrProof1').textContent = urlParams.get('addrFile1');
        document.getElementById('addrProof2').textContent = urlParams.get('addrFile2');
        document.getElementById('applPhoto').textContent = urlParams.get('appPhoto');
        document.getElementById('ownshipPhoto1').textContent = urlParams.get('ownPhoto1');
        document.getElementById('ownshipPhoto2').textContent = urlParams.get('ownPhoto2');
        document.getElementById('status').textContent = urlParams.get('status');
      	document.getElementById('applicationId').value = urlParams.get('appId');
      	var image1 = document.getElementById("image1"); image1.src = "http://localhost:8080/NewServCon/ImageDisplayServlet?imagepath=D://applicant_files//ID%20Proof//"+document.getElementById('idProofFile').textContent;
      	var image2 = document.getElementById("image2"); image2.src = "http://localhost:8080/NewServCon/ImageDisplayServlet?imagepath=D://applicant_files//Address%20Proof%20Front//"+document.getElementById('addrProof1').textContent;
      	var image3 = document.getElementById("image3"); image3.src = "http://localhost:8080/NewServCon/ImageDisplayServlet?imagepath=D://applicant_files//Address%20Proof%20Last//"+document.getElementById('addrProof2').textContent;
      	var image4 = document.getElementById("image4"); image4.src = "http://localhost:8080/NewServCon/ImageDisplayServlet?imagepath=D://applicant_files//Photo%20of%20Applicant//"+document.getElementById('applPhoto').textContent;
      	var image5 = document.getElementById("image5"); image5.src = "http://localhost:8080/NewServCon/ImageDisplayServlet?imagepath=D://applicant_files//OwnerShip%20Front//"+document.getElementById('ownshipPhoto1').textContent;
      	var image6 = document.getElementById("image6"); image6.src = "http://localhost:8080/NewServCon/ImageDisplayServlet?imagepath=D://applicant_files//OwnerShip%20Last//"+document.getElementById('ownshipPhoto2').textContent;
    </script>
    
    <!-- Add this script to popup.html -->
 <script>
  document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("verifyButton").addEventListener("click", function() {
      // Submit the form to update the verification status
      document.getElementById("verificationForm").submit();
    });
  });
</script>
    
</body>
</html>