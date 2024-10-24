<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	
</head>
<body>
	<div class="card">
		<nav class="d-flex justify-content-between p-2 border border-primary">
			<img src="images/cjclogo.jpeg" width="150px" height="70px">
			<div class="pt-2">
				</a> <a href="/">
					<button class="btn btn-outline-primary">Logout</button>
				</a>
			</div>
		</nav>
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
										<tr>
											
											<td>${data.studentFullName}</td>
											<td>${data.studentAge}</td>
											<td>${data.studentContact}</td>
											<td>${data.studentEmail}</td>
											<td>${data.studentCollageName}</td>
											<td>${data.studentCourse}</td>
											<td>${data.batchNumber}</td>
											<td>${data.batchMode}</td>
											<td>${data.feesPaid}</td>
											 <td><button class="btn btn-success"><a href="edit?contact=${data.studentContact}">ChangeProfile</a></button></td>

										</tr>

									</tbody>
								</table>
							</div>
						</div>
</body>
</html>