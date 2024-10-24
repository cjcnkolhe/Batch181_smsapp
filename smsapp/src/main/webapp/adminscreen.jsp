<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.enroll {
	background-image: url("images/addstudent.jpg");
	 background-size: cover; 
	background-repeat: no-repeat;
	border: solid 2px red;
    height: 200px
}

.heading {
	font-family: cursive;
	text-align: center;
	margin-bottom: 20px;
}
form {
	width: 400px
}

.view {
	background-image: url("images/viewstudent.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

</head>
<body>
	<div class="card">

		<nav class="d-flex justify-content-between p-2 border border-primary">
			<img src="images/cjclogo.jpeg" width="150px" height="70px">
			<div class="pt-2">
				<a href="#enroll">
					<button class="btn btn-outline-primary">Enroll Student</button>
				</a> <a href="#view">
					<button class="btn btn-outline-primary">View Student</button>
				</a> <a href="/">
					<button class="btn btn-outline-primary">Logout</button>
				</a>
			</div>
		</nav>
		
		<div class="vh-100 gradient-custom enroll mt-2" id="enroll">
			<div class="container  h-100">
				<div class="row justify-content-center h-100 w-75">
					<div class="col-12 col-lg-9 col-xl-7">
						<div class="card shadow-2-strong card-registration mt-0"
							style="border-radius: 15px;">
							<div class="card-body mt-0">
								<h3 class="heading">Student Enrollment Form</h3>

								<form action="enroll_student">
									<div class="row ">
										<div class="col-md-6 mb-2">

											<div class="form-outline">
												<input type="text" id="firstName"
													class="form-control form-control-sm" name="studentFullName" />
												<label class="form-label" for="firstName">First Full
													Name</label>
											</div>

										</div>
										<div class="col-md-6 mb-2">

											<div class="form-outline">
												<input type="email" id="lastName"
													class="form-control form-control-sm" name="studentEmail" />
												<label class="form-label" for="lastName">Student
													Email</label>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6 mb-2 d-flex align-items-center">

											<div class="form-outline datepicker w-100">
												<input type="number" class="form-control form-control-sm"
													id="birthdayDate" name="studentAge" /> <label
													for="birthdayDate" class="form-label">Student Age</label>
											</div>
										</div>

										<div class="col-md-6 mb-2 pb-2">

											<div class="form-outline">
												<input type="text" id="text"
													class="form-control form-control-sm"
													name="studentCollageName" /> <label class="form-label"
													for="phoneNumber">Student Collage Name</label>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6 mb-2 pb-2">

											<div class="form-outline">
												<input type="number" id="emailAddress"
													class="form-control form-control-sm" name="feesPaid" /> <label
													class="form-label" for="emailAddress">Fees Paid</label>
											</div>

										</div>
										
										
										<div class="row">
										<div class="col-md-6 mb-2 pb-2">

											<div class="form-outline">
												<input type="text" id="contact"
													class="form-control form-control-sm" name="studentContact" /> <label
													class="form-label" for="emailAddress">Mobile NO</label>
											</div>

										</div>
										
										
										
										<div class="col-md-6 mb-2">

											<h6 class="mb-2 pb-1">Student Course :</h6>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="java" value="Java" checked /> <label
													class="form-check-label" for="java">Java</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="StudentCourse" id="python" value="Python" /> <label
													class="form-check-label" for="python">Python</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="StudentCourse" id="testing" value="Testing" /> <label
													class="form-check-label" for="testing">Testing</label>
											</div>

										</div>

									</div>

									<div class="row">
										<div class="col">

											<select class="select form-control-sm" name="batchMode">
												<option value="#" disabled>Select Batch Mode</option>
												<option value="Online">Online</option>
												<option value="Offline">Offline</option>

											</select> <label class="form-label select-label">Batch Mode</label>

										</div>
										<div class="col">

											<select class="select form-control-sm" name="batchNumber">
												<option value="#" disabled>Select Batch Number</option>
												<option value="FDJ-181">FDJ-181</option>
												<option value="REG-181">REG-181</option>
												
												
											</select> <label class="form-label select-label">Batch Number</label>

										</div>
									</div>

									<div class="mt-2 pt-2 d-flex justify-content-center">
										<input class="btn btn-primary btn-lg" type="submit"
											value="Submit" />
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="view" style="height: 530px" id="view">
			<h1>View Student</h1>
			
				<div class="card text-center">
					
								<table class="table table-bordered">
									<thead>
										<tr>
                                           
											<th scope="col">FULLNAME</th>
											<th scope="col">AGE</th>
											<th scope="col">MobileNo</th>
											<th scope="col">Email</th>
											<th scope="col">CollageName</th>
											<th scope="col">COurse</th>
											<th scope="col">BatchNumber</th>
											<th scope="col">BatchMode</th>
											<th scope="col">FEESPaid</th>
											<th scope="col">UpdateProfile</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${data}" var="s">
										
										<tr>
											
											<td>${s.studentFullName}</td>
											<td>${s.studentAge}</td>
										     <td>${s.studentContact}</td>
											<td>${s.studentEmail}</td>
											<td>${s.studentCollageName}</td>
											<td>${s.studentCourse}</td>
											<td>${s.batchNumber}</td>
											<td>${s.batchMode}</td>
											<td>${s.feesPaid}</td>
										 <td><button class="btn btn-success"><a href="edit?contact=${s.studentContact}">ChangeProfile</a></button></td>

										</tr>
										
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
		</div>

	</div>

</body>
</html>