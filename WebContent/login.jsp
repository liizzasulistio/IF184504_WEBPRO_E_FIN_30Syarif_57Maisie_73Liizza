<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/styles.css">
		<link rel='icon' href='favicon.ico?' type='image/x-icon' />
		 <link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet"> 
		<title>Log In</title>
	</head>
	<body>
		<div class="header" id="non-member">
		<img style="width: 3%; height: 3%;" src="images/dfi_logo.png" alt="DFI Logo">
		<h2 style="color: #FFFFFF; display: inline;">DFI Project</h2>
		</div>
	
	
		<form action="" method="POST" class="right-container">
		<h2>Log In to DFI Project</h2><br>
			<div class="form-group">
				<label>Username or E-mail</label><br>
				<input type="text" name="Username or E-mail" class="form-control"></input>
			</div>
			<div class="form-group">
				<label>Password</label><br>
				<input type="password" name="Password" class="form-control"></input>
			</div>
			<a href="" style="font-size: 14px; padding: auto;">Forgot password?</a><br><br>
			<button type="submit" class="button-1st">Log In</button>
			<p>Not a member yet? <a href="register.jsp">Sign Up</a></p>
		</form>
	</body>
</html>