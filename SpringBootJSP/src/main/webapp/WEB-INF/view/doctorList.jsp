<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of Doctors</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<header id="hd" class="main-header">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="logo-left">
					<h1>
						<a href="../">Logo</span>
						</a>
					</h1>
				</div>
			</div>
			<div class="col-md-6">
				<div class="nav-meniu">
					<ul>
						<li><a href="../">Home</a></li>
						<li><a href="/contact">Contact</a></li>
						<li><a href="/doctorList">List of Doctors</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</header>
	<section>
	<div class="container">
		<h1>List of doctors</h1>
		 <table class="table table-bordered">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${doctors}" var="doctor">
      <tr>
        <td>${doctor.firstName}</td>
        <td>${doctor.lastName}</td>
        <td>${doctor.email}</td>
      </tr>
      </c:forEach>
    </tbody>
</table>
		
	</div>

	</section>


</body>
</html>