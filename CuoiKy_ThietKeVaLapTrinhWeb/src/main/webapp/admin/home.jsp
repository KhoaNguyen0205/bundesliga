<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN || HOME</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a.button{
 display: inline-block;
 padding: 20px 40px;
 background-color:white;
 text-decoration: none;
 border-radius: 20px;
}

a.button.addClub{
	background: #ffb3b3;
	float: left;
	height: 100px;
	width: 350px;
}
</style>
</head>
<body>
<%@include file="navbar.jsp"%> 
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
    <div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_clubs.jsp">
					<div class="card">
						<div class="card-body text-center">
							<br>
							<h4>Add CLUBS</h4>
							-------------
						</div>
					</div>
				</a>
			</div>

			
			
</body>
</html>