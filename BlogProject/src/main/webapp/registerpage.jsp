<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>

<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
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
	
	<main class="primary-background"  style="padding-bottom: 80px;">

            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <br>
                            Register here
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="UserRegisterServlet" method="POST">

                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>



                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input  name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>


                                <div class="form-group">
                                    <label for="gender">Select Gender</label>
                                    <br>
                                    <input type="radio" name="gender" value="Male" >Male
                                    <input type="radio"  id="gender" name="gender" value="feMale">Female
                                </div>

                                <div class="form-group">

                                    <textarea name="about"  class="form-control" id=""  rows="5" placeholder="Enter something about yourself"></textarea>

                                </div>


                                <div class="form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
                                </div>

                                <br>

                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait..</h4>
                                </div>
								<div>
                                   <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
                               		<a href="Login.jsp"><u>If You have already account</u></a>
                                	
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
	
	
	  <%@include file="footer.jsp" %>       
</body>
</html>