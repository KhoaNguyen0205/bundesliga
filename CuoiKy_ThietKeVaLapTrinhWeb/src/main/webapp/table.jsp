<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bundesliga || Table</title>
<link rel="stylesheet" href="css1/style.css">
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar2.jsp"%>

	<h1>
		<b>Table</b>
	</h1>
	<div class="container mt-5">
		<table class="table table-light ">
			<thead>
				<tr>
					<th scope="col"></th>
					<th  >Club</th>
					<th scope="col">Matches</th>
						<th scope="col">W</th>
					<th scope="col">D</th>
					<th scope="col">L</th>
					<th scope="col">Goals</th>
					<th scope="col">+/-</th>
					<th scope="col">Points</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td scope="col">FC Bayern München</td>
					<td scope="col">15</td>
					<td scope="col">10</td> 
					<td scope="col">4</td>
					<td scope="col">1</td>
					<td scope="col">49:13</td>
					<td scope="col">+36</td>
					<td>34</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>SC Freiburg</td>
					<td>15</td>
					<td>9</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>RB Leipzig</td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
</body>
</html>