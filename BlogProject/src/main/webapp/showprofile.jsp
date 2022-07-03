<%-- <%@page import="com.kody.blog.entities.UserProfile"%> --%>
<%-- <%@page import="com.kody.blog.helper.ConnectionProvider"%>    --%>
 <%@page import="com.kody.blog.dao.UserProfileDao"%> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog Jay Goga</title>
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@include file="navbar.jsp"%>
		 <% 
		 int id=Integer.parseInt(request.getParameter("user_id"));
		 UserProfileDao ud = new UserProfileDao(ConnectionProvider.getConnection());
		 UserProfile user=ud.getUserByUserId(id);
		 %>
		 <!-- Modal -->
		 <div class="container text-center  mt-5">
		 <div class="card text-center" style="border: #6c757d; border-style: inset;">
 		 <div class="card-header bg-secondary text-white" style="border-radius: initial;">Blogger Profile</div>
 	 
        <div class="card-body">
                        <div class="container justify-content-center text-center">
                            <img src="pics/<%= user.getProfile()%>" class="img-fluid" style="border-radius:10%;max-width: 150px;" >
                            <br>
                            <h5 class="modal-title mt-3" id="exampleModalLabel"> <%= user.getName()%> </h5>
                            <!--//details-->

                            <div id="profile-details">
                         
       
       
                                <table class="table">

                                    <tbody>
                                       
                                        <tr>
                                            <th scope="row"> Email : </th>
                                            <td><%= user.getEmail()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Gender :</th>
                                            <td><%= user.getGender()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Status :</th>
                                            <td><%= user.getAbout()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Registered on :</th>
                                            <td><%= user.getDateTime().toString()%></td>

                                        </tr>
                                    </tbody>
                                </table>
                    </div>
                    </div>
                    </div>
                    <div class="card-footer bg-secondary text-white" style="border-radius: initial;">@All Reserved by Jay Goga</div>
                    </div>
                    
        </div>
                    
                           
        
        <%@include file="footer.jsp"%>
</body>
</html>