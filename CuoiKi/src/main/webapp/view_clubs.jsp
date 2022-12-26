<%@page import="com.entity.ClubDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ClubDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="css1/style.css">
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
<%@include file="all_component/navbar2.jsp"%>
   <c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
<%
int id =Integer.parseInt(request.getParameter("id"));
ClubDAOImpl dao = new ClubDAOImpl(DBConnect.getConn());
ClubDtls b = dao.getClubById(id);
%>
  <div class="container p-3"> 
     <div class="row">
         <div class="col-md-6 text-center p-5 border bg-white">
           <img src="AllClubs/<%=b.getLogo()%>" style="height: 100px; width: 100px"><br>
           <h4 class="mt-3" style="color: ">
               Club Name: <span class="test-success"><%=b.getName()%></span>
           </h4>
           
           <h4>
              Match rate: Win: <%=b.getW()%> / Draw: <%=b.getD()%> / Lose: <%=b.getL()%>
           </h4>

				<h4>
					<div class="list-button div_left" style="border: 5px double">
				<form class="form-inline my-2 my-lg-0" action="searchmatch.jsp"
							method="post">
							All Matches: <select type="search" name="ch">
								<option><%=b.getName()%></option> 
							</select><button class=" my-2 my-sm-0" type="submit">View</button>
				</span> <span> <b><%=b.getName() %></b>
				</span>
				</a>
			</div>
				</h4>
				
				<h4>
					<div>
						<form class="form-inline my-2 my-lg-0" action="search.jsp"
							method="post">
							Players: <select type="search" name="ch">
								<option><%=b.getName()%></option>
							</select>
							<button class=" my-2 my-sm-0" type="submit">View</button>
						</form>
					</div>
				</h4>
			</div>
     </div>
  </div>
  
	<div class="col-md-6">
						<form class="form-inline my-2 my-lg-0" action="searchmatch.jsp"
							method="post">
							All Matches: <select type="search" name="ch">
								<option><%=b.getName()%></option> 
							</select><button class=" my-2 my-sm-0" type="submit">View</button>
							
						</form>
					</div>
 
 
  
</body>
</html>