
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<style>
body {
/* 	background-image: url("images/busimage.jpg"); */
	background-repeat: no-repeat;
	background-size: 4500px;
}
</style>
<title>Bus Report</title>
 <link href="animate.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!--  <link href="font-awesome.min.css" rel="stylesheet" type="text/css"/> -->
 <link href="lightbox.css" rel="stylesheet" type="text/css"/>
  <link href="owl.carousel.css" rel="stylesheet" type="text/css"/>
 <link href="owl.transitions.css" rel="stylesheet" type="text/css"/>
 <link href="owl.theme.css" rel="stylesheet" type="text/css"/>
 <link href="slick-theme.css" rel="stylesheet" type="text/css"/>
 <link href="style.css" rel="stylesheet" type="text/css"/>
 

</head>
<body>
	<%@include file="header.jsp"%>
	
	<!-- busList shows all the records of buses it is comes from the ViewBusesReport Servlet. -->
	
	<div class="container" style="border: t">
		<h2 style="text-align: center; margin-top: 20px;">Bus Report</h2>
		<br> <br>
		<table id="myTable" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Sr. No</th>
					<th>Bus Number</th>
					<th>Bus Name</th>
					<th>Source</th>
					<th>Destination</th>
					<th>Total Seats</th>
					<th>Available Seats</th>
					<th>Date</th>
					<th>Time</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				
				<tr>
					<td>1</td>
					<td>56</td>
					<td>Gadani</td>
					<td>Gopal Chowk</td>
					<td>Iskon</td>
					<td>30</td>
					<td>-5</td>
					<td>4/7/22</td>
					<td>8:15</td>
					<td><a type="button"
						href="#"><i class="fa fa-edit" aria-hidden="true" style="color: green; cursor: pointer; font-size: 25px;"></i></a></td>
					<td><a type="button"><i class="fa fa-trash" onclick="sweet(1);" id="sweetAlert" aria-hidden="true"
							style="color: red; cursor: pointer; font-size: 25px;"></i></a></td>
				</tr>
				<tr>
					<td>1</td>
					<td>56</td>
					<td>Gadani</td>
					<td>Gopal Chowk</td>
					<td>Iskon</td>
					<td>30</td>
					<td>-5</td>
					<td>4/7/22</td>
					<td>8:15</td>
					<td><a type="button"
						href="#"><i class="fa fa-edit" aria-hidden="true"
							style="color: green; cursor: pointer; font-size: 25px;"></i></a></td>
					<td><a type="button"><i class="fa fa-trash"
							onclick="sweet(16);" id="sweetAlert"
							aria-hidden="true"
							style="color: red; cursor: pointer; font-size: 25px;"></i></a></td>
				</tr>
				
				
				
				
					<tr>
					<td>1</td>
					<td>56</td>
					<td>Gadani</td>
					<td>Gopal Chowk</td>
					<td>Iskon</td>
					<td>30</td>
					<td>-5</td>
					<td>4/7/22</td>
					<td>8:15</td>
					<td><a type="button" href="#"><i
							class="fa fa-edit" aria-hidden="true"
							style="color: green; cursor: pointer; font-size: 25px;"></i></a></td>
<!-- 					<td><a type="button"><i class="fa fa-trash" -->
<!-- 							onclick="sweet(52);" id="sweetAlert" -->
<!-- 							aria-hidden="true" -->
<!-- 							style="color: red; cursor: pointer; font-size: 25px;"></i></a></td> -->
<!-- 				</tr> -->
			</tr>
				<tr>
					<td>1</td>
					<td>56</td>
					<td>Gadani</td>
					<td>Gopal Chowk</td>
					<td>Iskon</td>
					<td>30</td>
					<td>-5</td>
					<td>4/7/22</td>
					<td>8:15</td>
					<td><a type="button" href="#"><i
							class="fa fa-edit" aria-hidden="true"
							style="color: green; cursor: pointer; font-size: 25px;">
							</i></a></td>
					<td><a type="button"><i class="fa fa-trash"
							data-toggle="modal" data-target="#profile-modal"
							aria-hidden="true"
							style="color: red; cursor: pointer; font-size: 25px;">
							</i></a></td>
				</tr>
				
			</tbody>
		</table>
	</div>
	
	
<!-- 							onclick="sweet(4);" id="sweetAlert" -->
	
	
	
	<div class="modal" id="profile-modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
	
	<script src="jquery-3.6.0.min.js"></script>
   <script src="popper.min.js" ></script>
   <script src="bootstrap.min.js" ></script>
<!--    <script src="js/myjs.js" type="text/javascript"></script> -->
   <script src="sweetalert.min.js" type="text/javascript"></script>
	<script src="font.js" type="text/javascript" ></script>
    <script src="bootstrap.bundle.min.js" type="text/javascript"></script>
	<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="modernizrr.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		alert("Hello");
// 		$('#myTable').dataTable();
	});
	
	function getdid(busid) {
		var busId = busid;
		var x = confirm("Are you sure want to Delete?");

		if (x == true) {
			$(document).ready(function() {

				$.get("DeleteBus", {
					busid : busId
				})
			});
		}
	}
</script>
</body>
</html>