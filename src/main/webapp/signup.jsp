<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style type="text/css">
.col .col-md-3 label {
	font-size: 1.3rem;
}
</style>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<h1 class="mx-auto text-center"
		style="font-size: 3rem; margin-bottom: 3%;">SignUp</h1>

	<div class="container">
		<div class="row">
			<div class="col col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h3 class="display-4">Register Here</h3>
						<h5 id="msg"></h5>

						<div class="form" >
							<form action="register" method="post" id="myForm" >
								<div class="container-fluid">
									<div class="row">
										<div class="col-md-3 mb-2">
											<label for="userName" class="form-label">User Name</label>
										</div>
										<div class="col-md-9">
											<input type="text" placeholder="Enter Name"
												class="form-control" id="userName" name="user_name">

										</div>
									</div>

									<div class="row">
										<div class="col-md-3 mb-2">
											<label for="userEmail" class="form-label">Email
												address</label>
										</div>
										<div class="col-md-9">
											<input type="email" placeholder="Enter Email"
												class="form-control" id="userEmail" name="user_email">
										</div>
									</div>

									<div class="row">
										<div class="col-md-3 mb-2">
											<label for="userPassword" class="form-label">Password</label>
										</div>
										<div class="col-md-9">
											<input type="password" placeholder="Enter Password"
												class="form-control" id="userPassword" name="user_password">
										</div>
									</div>
														
								</div>
								<button type="submit"
									class="btn btn-md btn-outline-dark text-primary mx-auto d-block">
									SignUp</button>

							</form>
						</div>
						<div class="loader">
							<div class="d-flex justify-content-center visually-hidden" >
									<div class="spinner-grow" role="status">
										<span class="visually-hidden">Loading...</span>
									</div>
							</div>
							<h5 class="d-block text-center visually-hidden">Please Wait...</h5>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>