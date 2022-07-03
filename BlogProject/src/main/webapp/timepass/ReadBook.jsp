<%@page import="java.io.PrintWriter"%>
<%@page import="org.xml.sax.SAXException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
<!-- THEME TYPO -->
<link href="css/themetypo.css" rel="stylesheet">
<!-- BOOTSTRAP -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- COLOR FILE -->
<link href="css/color.css" rel="stylesheet">
<!-- FONT AWESOME -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- BX SLIDER -->
<link href="css/jquery.bxslider.css" rel="stylesheet">
<!-- Boostrap Slider -->
<link href="css/bootstrap-slider.css" rel="stylesheet">
<!-- Widgets -->
<link href="css/widget.css" rel="stylesheet">
<!-- Owl Carusel -->
<link href="css/owl.carousel.css" rel="stylesheet">
<!-- responsive -->
<link href="css/responsive.css" rel="stylesheet">
<!-- Component -->
<link href="js/dl-menu/component.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/bookblock.css" />
</head>
<body>
<%String data = (String)request.getAttribute("BookData"); 
char[] da=data.toCharArray();
//PrintWriter out=new PrintWriter(
%>



<section>
			<div class="container">
				<div class="section-heading-1">
                	<h2>Free Books To Read (Text Base)</h2>
                    <p>The Most Popular Books Today are available in Book Library</p>
                    <div class="kode-icon"><i class="fa fa-book"></i></div>
                </div>
				<div class="bb-custom-wrapper">
					<div id="bb-bookblock" class="bb-bookblock">
						<%int c=1;%>
						<%for(int i=0;i<data.length()-700;){ %>
						<div class="bb-item">
							<div class="bb-custom-side">
								<h3><%=c%></h3>
								<pre>
								<%=data.substring(i, i+350)%>
								</pre> 
				  		</div>
							<% 
							i=i+350; c=c+1;
							%>
							<div class="bb-custom-side">
								<h3><%=c%></h3>
								<pre>
								<%=data.substring(i, i+350)%>
								
								</pre>
							</div>
							<%
							i=i+350; c=c+1;
 							%>
						</div>
						<%} %>
					</div>

					<nav>
						<a id="bb-nav-prev" href="#" class="bb-custom-icon bb-custom-icon-arrow-left">Previous</a>
						<a id="bb-nav-next" href="#" class="bb-custom-icon bb-custom-icon-arrow-right">Next</a>
					</nav>
				</div>
			</div>
		</section>
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/modernizr.custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<script src="js/bootstrap-slider.js"></script>
<script src="js/waypoints.min.js"></script> 
<script src="js/jquery.counterup.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/dl-menu/jquery.dlmenu.js"></script>
<script type="text/javascript" src="lib/hash.js"></script>
<script type="text/javascript" src="lib/booklet-lib.js"></script>
<script src="js/jquerypp.custom.js"></script>
<script src="js/jquery.bookblock.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script src="js/functions.js"></script>
</body>
</html>