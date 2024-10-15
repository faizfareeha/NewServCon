<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SBPDCL Official Log In</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar"> <!-- navbar-light bg-light -->
  <div class="container-fluid d-flex justify-content-center">
  <div class="row gx-0">
  <div class="col">
  <img src="https://upload.wikimedia.org/wikipedia/en/f/f0/SBPDCL_logo.gif" alt="logo" width="57" height="57"></div>
  <div class="col m-2">
    <span class="navbar-brand mb-0 h1">SOUTH BIHAR POWER DISTRIBUTION COMPANY LTD</span>
	<p>GOVERNMENT OF BIHAR</p>
  </div>
  </div>  
  </div>
        <a class="position-absolute top-0 end-0 mx-5 pt-3" href="logpg.jsp">User LogIn</a>
</nav>
<div class="container my-3 p-2">
<% String loginResult = (String) request.getAttribute("loginResult"); %>
    <% if ("Login Successful".equals(loginResult)) { %>
        <div class="alert alert-success alert-dismissible fade show text-center" role="alert" id="message-success">
            <%= loginResult %>
            <button class="btn-close" aria-label="close" data-bs-dismiss="alert"></</button>
        </div>
    <% } else if ("Incorrect ID".equals(loginResult)) { %>
        <div class="alert alert-danger alert-dismissible fade show text-center" role="alert" id="message-failed">
            <%= loginResult %>
            <button class="btn-close" aria-label="close" data-bs-dismiss="alert"></</button>
        </div>
    <% } else if ("Incorrect Password".equals(loginResult)) { %>
    	<div class="alert alert-danger alert-dismissible fade show text-center" role="alert" id="message-failed">
            <%= loginResult %>
            <button class="btn-close" aria-label="close" data-bs-dismiss="alert"></</button>
        </div>
     <% } %>   
</div>
<div class="container d-flex justify-content-center  py-3" style="align-content: center">
<div class="border border-2 rounded bg-white">
<div class="row  m-4">
<div class="col p-2 m-2">
<!-- <div class="row align-items-center" style="height: 100vh;">-->
    <!--     <div class="mx-auto col-10 col-md-8 col-lg-6"> -->

  <h2 style="color: rgb(56, 56, 56); text-align: center;">OFFICIAL LOG IN</h2> <br>
  
<form novalidate action="OffLog">


<div class="row">
    <div class="col-12">	
	<input class="form-control" type="text" placeholder="Official ID" name="oid" id="oid" pattern="^[A-Z]\d{3,}" required/>
	<div class="invalid-feedback">Please Enter A Valid User ID.</div><br>
</div>
<div class="col">
	                                                                  <!-- pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" -->
	<input class="form-control" type="password" placeholder="Pasword" name="pwd" id="pwd" onkeyup='check();' required/><div class="invalid-feedback">Please Enter Your Password.</div>
	<input class="form-check-input" type="checkbox" onclick="myFunction()"> Show Password
	<br><br>
	</div>
	</div>
	<div class="text-center">
	<input class="btn btn-secondary" type="submit" value="Log In"><br><br>
	
	</div>
		
</form>
</div>
</div>
</div>
</div>



<script>	
	function myFunction() {
	  var x = document.getElementById("pwd");
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