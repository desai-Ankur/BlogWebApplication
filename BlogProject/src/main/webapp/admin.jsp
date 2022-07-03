<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon"  href="img/favicon.png">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/myjs.js" type="text/javascript"></script>
<script src="js/font.js" type="text/javascript"></script>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<!-- Cards -->
	<div class="container-fluid">
		<!-- First Row -->
		<div class="row mb-4 mt-4">
			<div class="col-md-4 mt-2 text-center" >
				<div class="card">
				<div class="card-header">
				<h1><b class="card-title"><span class='fa fa-user'></span></b></h1>
				</div>
					<div class="card-body text-white bg-primary">
						<h1>Total User:</h1>
						<p>16</p>				
					</div>
				</div>
			</div>
			
			
			<div class="col-md-4 mt-2 text-center" >
				<div class="card">
				<div class="card-header">
				<h1><b class="card-title"><span class='fa fa-list-alt'></span></b></h1>
				</div>
					<div class="card-body text-white bg-primary">
						<h1>Total Category:</h1>
						<p>4</p>				
					</div>
				</div>
			</div>
			
			<div class="col-md-4 mt-2 text-center" >
				<div class="card">
				<div class="card-header">
				<h1><b class="card-title"><span class='fab fa-blogger-b'></span></b></h1>
				</div>
					<div class="card-body text-white bg-primary">
						<h1>Total Blog:</h1>
						<p>4</p>				
					</div>
				</div>
			</div>
			<!-- End First Row -->
		</div>
		
		
			<!-- End First Row -->
		
		
		
	</div>
</body>
</html>