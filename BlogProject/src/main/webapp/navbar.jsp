
<%@page import="com.kody.blog.entities.Message"%>
<%@page import="com.kody.blog.entities.UserProfile"%>
<%@page import="com.kody.blog.dao.UserProfileDao"%>
<%@page import="com.kody.blog.dao.PostDao"%>
<%@page import="com.kody.blog.entities.Category"%>
<%@page import="com.kody.blog.helper.ConnectionProvider"%>
<%@page import="java.util.*"%>

<%@page errorPage="error_page.jsp" %>
<%

    UserProfile u1 = (UserProfile) session.getAttribute("currentUser");
%>
<!-- NavBar Start -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		  <a class="navbar-brand" href="index.jsp">
				<span class='fab fa-blogger-b' style='font-size:24px;color:red'></span> Blog 
		  </a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
		      </li>
		      
		      <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="fa fa-check-square-o"></span> Categories
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Programming Language</a>
                    <a class="dropdown-item" href="#">Project Implementation</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Data Structure</a>
                </div>
            </li>
		     <li class="nav-item">
		        <a class="nav-link" href="about.jsp">about</a>
		     </li>
		     <%
		     if (u1 == null) {
		     %>
		      <li class="nav-item">
		        <a class="nav-link" href="Login.jsp">Login</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="registerpage.jsp">Sign Up</a>
		      </li>
		    </ul>
		      <%
			  }
			   else
			   {
		      %>
		       <li class="nav-item">
                    <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal" > <span class="fa fa-user-circle"></span> Do Post</a>
               </li>
		      </ul>
		      <ul class="navbar-nav mr-right">
		        <li class="nav-item" >
		        	<a class="nav-link" data-toggle="modal" data-target="#profile-modal"><%=u1.getName() %></a>
		        </li>
		   		<li class="nav-item" >
		        	<a class="nav-link" href="profile.jsp"><span class="fa fa-id-card-o" aria-hidden="true" style="color: white;"></span><%=u1.getName() %></a>
		        </li>
		      	<li class="nav-item">
		        	<a class="nav-link" href="LogoutServlet">Log Out</a>
		      	</li> 
		    </ul>
		    <%} %>
		    
		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
		    </form>
		  </div>
		</nav>
	<!-- NavBar End -->
	
	
	