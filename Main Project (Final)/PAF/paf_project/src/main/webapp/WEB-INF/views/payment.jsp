<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/includes.jsp"%>
<%
	if(session.getAttribute("emailAdmin") == null){
		response.sendRedirect("/paf_project/admin");
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/dash.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/customStylesheet.css"/>" />

<script src="/resources/js/bootstrap.min.js"></script>
<title>Payment Management</title>
</head>
<body>
	<div align="center"
		style="padding: 20px; margin: 50px; width: auto; border: solid 2px;">

		<center>
			<div>
				<h1 style="font-size: 35px;">
					<a href="/paf_project/adminDashboard"><b style="color: black">Manage
							Payment</b></a>
				</h1>
			</div>

			<form:form action="/paf_project/searchPayment" method="POST">
				<table>
					<tr>
						<td><input type="text" name="searchVal"
							style="border: solid 1px;" /></td>
						<td><input type="submit" name="action" value="Search"
							class="btn btn-primary" /></td>
						<td><a href="/paf_project/viewAllPayment"><input
								type="button" value="View All" class="btn btn-primary" /></a></td>
						<td><a href="/paf_project/addPayment"><input
								type="button" value="Add Payment" class="btn btn-primary" /></a></td>
					</tr>

				</table>
			</form:form>
			<br>
			<table border="1" width="100%">

				<th style="color: #fff; background-color: #007bff;">Payment ID</th>
				<th style="color: #fff; background-color: #007bff;">Payment Type</th>
				<th style="color: #fff; background-color: #007bff;">Payment Status</th>
				<th style="color: #fff; background-color: #007bff;">Added Date</th>



				<c:forEach var="payment" items="${listPayment}">
					<tr>

						<td>${payment.payID}</td>
						<td>${payment.payType}</td>
						<td>${payment.status}</td>
						<td>${payment.addedDate}</td>


						<td align="center"><a href="/paf_project/editPayment?pID=${payment.payID}"><input
								type="button" class="btn btn-primary" value="Edit" /></a></td>
						<td align="center"><a
							href="/paf_project/deletePayment?payID=${payment.payID}&command=active"><input
								type="submit" class="btn btn-primary" name="active" value="Activate" style="background-color:green; border:none;" /></a></td>
						<td align="center"><a
							href="/paf_project/deletePayment?payID=${payment.payID}&command=inactive"><input
								type="submit" class="btn btn-primary" name="del" value="Deactivate" style="background-color:red; border:none;"/></a></td>

					</tr>
				</c:forEach>
			</table>
		</center>
	</div>
</body>
</html>
