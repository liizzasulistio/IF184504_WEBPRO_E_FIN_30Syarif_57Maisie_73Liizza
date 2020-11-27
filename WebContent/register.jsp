<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.io.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/styles.css">
		<link rel='icon' href='favicon.ico?' type='image/x-icon' />
		 <link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet"> 
		<title>Sign Up</title>
	</head>
	<body>
	<% 
	try {
	String connectionURL = "jdbc::mysql://127.0.0.1/phpmyadmin/db_structure.php?server=1&db=DFI_Project/"; 
	Connection connection = null; 
	Class.forName("com.mysql.jdbc.Driver"); 
	connection = DriverManager.getConnection(connectionURL, "root", "");
	
	if(!connection.isClosed())
	%>
	<font size="+3" color="green">
	<% 
	out.println("Successfully connected to " + "MySQL server using TCP/IP...");
	connection.close();
	}
	catch(Exception ex){
	%>
	</font>
	<font size="+3" color="red">
	<%
	out.println("Unable to connect to database.");
	}
	%>
	</font>
		
	
		<div class="header" id="non-member">
		<img style="width: 3%; height: 3%;" src="images/dfi_logo.png" alt="DFI Logo">
		<h2 style="color: #FFFFFF; display: inline;">DFI Project</h2>
		</div>
		
		<form action="register-servlet" method="POST" class="right-container">
		<h2>Sign Up to DFI Project</h2><br>
			<div class="form-group">
				<label>Username</label><br>
				<input type="text" name="Username" placeholder="dfi_official" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>Name</label><br>
				<input type="text" name="Name" placeholder="DAY6 Fanartists Indonesia" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>E-mail</label><br>
				<input type="email" name="Email" placeholder="day6fanartistsid@myday.com" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>Password</label><br>
				<input type="password" name="Password" placeholder="Password" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>Retype Password</label><br>
				<input type="password" name="RetypePassword" placeholder="Retype Password" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>Hometown</label><br>
				<input type="text" name="Hometown" placeholder="Jakarta" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>Birthday</label><br>
				<input type="date" name="Birthday" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>Twitter</label><br>
				<input type="text" name="Twitter" placeholder="dfi_official" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>Instagram</label><br>
				<input type="text" name="Instagram" placeholder="day6fanartistsid" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>Why do you want to join us?</label><br>
				<input type="text" name="Reason" placeholder="Please state your reason here" class="form-control"></input>
			</div><br>
			<div class="form-group">
				<label>Please upload your DAY6 fanart</label><br><br>
				<label class="button-2nd">Choose File
					<input type="file" name="Fanart" style="width: 50px; height: 50px; visibility: hidden;" id="add-fanart"/>
				</label>
				<span id="file-chosen">No file chosen</span>
				<script>
				const addFanart = document.getElementById('add-fanart');
				const fileChosen = document.getElementById('file-chosen');
				addFanart.addEventListener('change', function(){
				  fileChosen.textContent = this.files[0].name
				})
				</script>
			</div>
			
			<input type="checkbox"/>Agree to our <a href="">Terms and Conditions</a><br>
			<button type="submit" class="button-1st">Sign Up</button>
			<p>Already a member? <a href="">Log In</a></p>
		</form>
	</body>
</html>