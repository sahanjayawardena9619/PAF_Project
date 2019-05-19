<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/customStylesheet.css"/>" />
<script src="/resources/js/bootstrap.min.js"></script>
<title>Customer Edit</title>
</head>
<body>



	<div style="margin-top: 20px;">
		<main class="login-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
						<div align="center" class="card-header">
							<h4>
								<b>Edit Profile</b>

							</h4>

						</div>

						<div class="card-body">
							<form:form id="myForm" method="post"
								action="/paf_project/editSaveCustomer" modelAttribute="customer">

								<div class="form-group row">
									<div class="col-md-6">
										<form:input type="text" path="cusID" class="form-control"
											name="cID" required="required" hidden="hidden"
											autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>First
											Name</h4></label>
									<div class="col-md-6">
										<form:input type="text" path="fname" class="form-control"
											name="fname" required="required" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>Last
											Name</h4></label>
									<div class="col-md-6">
										<form:input type="text" class="form-control" path="lname"
											name="lname" required="required" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>
											Phone</h4></label>
									<div class="col-md-6">
										<form:input type="text" class="form-control" path="phone"
											name="phone" required="required" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>
											Country</h4></label>
									<div class="col-md-6">
										<form:input type="text" class="form-control" path="country"
											name="country" required="required" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>
											Date of Birth</h4></label>
									<div class="col-md-6">
										<form:input type="date" class="form-control" path="dob"
											name="dob" required="required" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>
											City</h4></label>
									<div class="col-md-6">
										<form:input type="text" class="form-control" path="city"
											name="city" required="required" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>
											Postal Code</h4></label>
									<div class="col-md-6">
										<form:input type="text" class="form-control" path="postal"
											name="postal" required="required" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>
											Address Line 1</h4></label>
									<div class="col-md-6">
										<form:input type="text" class="form-control" path="address1"
											name="address1" required="required" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>
											Address Line 2</h4></label>
									<div class="col-md-6">
										<form:input type="text" class="form-control" path="address2"
											name="address22" required="required" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><h4>
											Password</h4></label>
									<div class="col-md-6">
										<form:input type="password" class="form-control"
											path="password" name="password" required="required"
											autofocus="autofocus" />
									</div>
								</div>






								<div class="col-md-6 offset-md-4">
									<button type="submit" class="btn btn-primary">Update</button>
								</div>
						</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>


		</main>
	</div>

</body>
</html>