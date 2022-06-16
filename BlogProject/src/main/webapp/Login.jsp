<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
  <script src="js/myjs.js" type="text/javascript"></script>
	 <style type="text/css">
	 	  .banner-background{
	 	 clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 92%, 69% 100%, 45% 91%, 20% 100%, 0 91%, 0% 35%, 0 0);
	 	 }
	 	  
	 </style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<main class="d-flex align-items-center primary-background  banner-background" style="height:80vh">
		<div class="container mt-4">
			<div class="row">
				<div class="col-md-4 offset-md-4">
				
					<div class="card">
						<div class="card-header primary-background text-center text-white" style="color: red; ">
						 	<span class="fa fa-user-plus fa-4x"> </span><br>
						 	<h3> Login Here</h3>
						</div>
						<div class="card-body">
							<form>
								  <div class="form-group">
								    <label for="exampleInputEmail1">Email address</label>
								    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
								    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
								  </div>
								  <div class="form-group">
								    <label for="exampleInputPassword1">Password</label>
								    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
								  </div>
								  <div class="form-check">
								    <input type="checkbox" class="form-check-input" id="exampleCheck1">
								    <label class="form-check-label" for="exampleCheck1">Check me out</label>
								  </div>
								  
								  <button type="submit" class="btn mt-2 btn-primary">Submit</button>
								</form>
						</div>
						
					</div>
				</div>
			</div>
		
		
		</div>
	
	
	</main>
	
	
	<script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/font.js" type="text/javascript" ></script>
    <script src="js/myjs.js" type="text/javascript"></script>
	<script src="js/popper.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	
	
	</script>
</body>
</html>