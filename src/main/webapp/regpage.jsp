<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SBPDCL Registration Page</title>
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
<!--           <a class="position-absolute top-0 end-0 mx-5 pt-3" href="offlogpg.jsp">Official LogIn</a> -->
</nav>

<!-- <div class="container my-3 p-2">
<%-- String regResult = (String) request.getAttribute("regResult"); %>

    <% if ("User Already Exists".equals(regResult)) { %>
        <div class="alert alert-danger alert-dismissible fade show text-center" role="alert" id="message-failed">
            <%= regResult %>
            <button class="btn-close" aria-label="close" data-bs-dismiss="alert"></</button>
        </div>
    <% }  --%>   
</div> -->


<div class="container d-flex justify-content-center" style="align-content: center;">
<div class="border border-2 rounded bg-white">
<div class="row  m-4">
        <div class="col p-2 m-2">

  <h2 style="color: rgb(56, 56, 56); text-align: center;">REGISTRATION</h2><br>
  
	<form novalidate action="UsrReg">


 <div class="row">
   <!-- <div class="col">
     
	<input class="form-control" type="text" placeholder="User ID" name="uid" id="uid" pattern="[0-9]+"/><div class="invalid-feedback">Please Enter A Valid User ID.</div><br>
	
	</div>-->
  
  <div class="col">
    
	<input class="form-control" type="text" placeholder="Full Name" name="name" id="name" required/><div class="invalid-feedback">Please Enter Your Name.</div><br>
	
	</div>
	</div> 


	<div class="row">
    <div class="col">
	<!-- <label for="email">Email: </label> -->
	<input class="form-control" type="email" placeholder="Email" name="email" id="email" required/> <div class="invalid-feedback">Please Enter A Valid Email.</div><br>
	</div>
	
	<div class="col">
	
    <div class="input-group">
    <div class="input-group-text">+91</div>
	<input class="form-control" type="tel" placeholder="Mobile Number" name="mno" id="mno" pattern="[0-9]{10}" required>
	<div class="invalid-feedback">Please Enter Your 10-digit Phone Number.</div>
	</div>
	</div>
	</div>



	<!-- <label for="pwd">Password: </label> -->
	<input class="form-control" type="password" placeholder="Pasword" name="pwd" id="pwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required onkeyup='check();' />
	<div class="invalid-feedback">Please Enter A Valid Password.<br> It Must Contain Atleast 8 Characters with 1 Upper Case, 1 Lower Case, 1 Digit</div> 
	<input class="form-check-input" type="checkbox" onclick="myFunction()"> Show Password
	<br><br>
	
	<!-- <label for="repwd">Repeat Password:</label> -->
    <input class="form-control" type="password" placeholder="Confirm Password" name="repwd" id="repwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required onkeyup='check();' /> <span id='message'></span>
    <div class="invalid-feedback">Please Type Same Password Again.</div>
    <input class="form-check-input" type="checkbox" onclick="myFunction2()"> Show Password
	<br><br>
    
  		
  	
<div class="text-center">
	<input class="btn btn-secondary" type="submit" value="Register"><br><br>
	If Already Registered:<br>
	<a href="logpg.jsp" class="btn btn-primary btn-sm">Log In </a>
</div>

</form>
</div>
</div>
</div>
</div>

<script>
	var myInput = document.getElementById("pwd");
	var myInput2 = document.getElementById("repwd");
	
	/*myInput2.onfocus = function() {
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
		}*/
	
	
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
		  var x = document.getElementById("pwd");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}
	function myFunction2() {
		  var x = document.getElementById("repwd");
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