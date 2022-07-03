
<!DOCTYPE html>

<%@page import="com.kody.blog.entities.Post"%>
<%@page import="com.kody.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>

<head>
<meta charset="ISO-8859-1">
<title>BlogProject</title>
<link rel="icon"  href="img/favicon.png">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/myjs.js" type="text/javascript"></script>
<style type="text/css">
.banner-background {
	clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 92%, 69% 100%, 45% 91%, 20% 100%,
		0 91%, 0% 35%, 0 0);
}
*{
font-family: cursive;
}
</style>
</head>
<body>
	
	<%@include file="navbar.jsp"%>
	<!-- Banner -->
	<div class="container-fluid p-0 m-0  banner-background">
		<div class="jumbotron">
			<div class="container">
				<h3 class="display-3">Welcome, Blog</h3>
				<p>World of blog.ahdjk ahdkjajdkl ajdkljakd kajdkljakljd
					kajdklja dklajdkljakldj kjakld jkdjklaj kjakldjkla dkl klj</p>
				<p>ajhdj ahsdjkh jkhjkashdjkhaskjhdkahjkd ajkdjkhasjkhdjkahjkdh
					akhdjkhah khakjdh kad kakh akdjk</p>
			</div>
		</div>

	</div>
	<!--End Banner-->

	<!-- Cards -->
	<div class="container-fluid">
		<!-- First Row -->
		<div class="row mb-4">
			<%
			PostDao postd = new PostDao(ConnectionProvider.getConnection());
			List<Post> list = postd.getAllPosts();
			for (Post p : list) {
			%>
			<div class="col-md-4 mt-2" >
				<div class="card" >
					<img class="card-img-top" src="pics/<%=p.getpPic()%>"
						alt="Card image cap" style="height: 300px; ">
					<div class="card-body" >
					<% String str = p.getpContent(); %>
						<b ><%=p.getpTitle() %></b>
						<p><%=str.substring(0, 150) + "..."%></p>
						<a href="show_blog_page.jsp?post_id=<%= p.getPid()%>" class="btn btn-outline-primary btn-sm">Read More...</a>
                
					</div>
				</div>
			</div>
			<%
			}
			%>
			<!-- End First Row -->
		</div>
	</div>
	<!-- Start Footer -->
	<%@include file="footer.jsp"%>
	<!-- End Footer -->

</body>
</html>