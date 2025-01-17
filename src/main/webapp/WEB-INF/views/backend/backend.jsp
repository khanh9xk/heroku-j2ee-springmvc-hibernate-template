<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
   <head>
      <meta charset="utf-8">
      <title>${titleShop}</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="${titleShop}">
      <meta name="author" content="${titleShop}">
	  <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/dataTables.bootstrap4.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/select2.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-datetimepicker.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
	   <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4598358148354805"
     crossorigin="anonymous"></script>
   </head>
	<body>
		<div class="main-wrapper">
			<%@ include file="b_header.jsp" %>
			<%@ include file="b_left_menu.jsp" %>
			<div class="page-wrapper">
				<div class="content">
					<div class="row">
						<div class="col-sm-4 col-5">
							<h4 class="page-title">Employee Salary</h4>
						</div>
						<div class="col-sm-8 col-7 text-right m-b-30">
							<a href="add-salary.html" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Salary</a>
						</div>
					</div>
					<div class="row filter-row">
						<div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
							<div class="form-group form-focus">
								<label class="focus-label">Employee Name</label>
								<input type="text" class="form-control floating">
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
							<div class="form-group form-focus select-focus">
								<label class="focus-label">Role</label>
								<select class="select floating">
									<option> -- Select -- </option>
									<option>Employee</option>
									<option>Manager</option>
								</select>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
							<div class="form-group form-focus select-focus">
								<label class="focus-label">Leave Status</label>
								<select class="select floating">
									<option> -- Select -- </option>
									<option> Pending </option>
									<option> Approved </option>
									<option> Rejected </option>
								</select>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
							<div class="form-group form-focus">
								<label class="focus-label">From</label>
								<div class="cal-icon">
									<input class="form-control floating datetimepicker" type="text">
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
							<div class="form-group form-focus">
								<label class="focus-label">To</label>
								<div class="cal-icon">
									<input class="form-control floating datetimepicker" type="text">
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
							<a href="#" class="btn btn-success btn-block"> Search </a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table datatable">
									<thead>
										<tr>
											<th style="width:25%;">Employee</th>
											<th>Employee ID</th>
											<th>Email</th>
											<th>Joining Date</th>
											<th>Role</th>
											<th>Salary</th>
											<th>Payslip</th>
											<th class="text-right">Action</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<img class="rounded-circle" src="${pageContext.request.contextPath}/resources/assets/img/user.jpg" height="28" width="28" alt=""> John Doe
											</td>
											<td>FT-0001</td>
											<td>johndoe@example.com</td>
											<td>1 Jan 2013</td>
											<td>
												<div class="dropdown">
													<a href="#" class="custom-badge status-grey dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Nurse</a>
													<div class="dropdown-menu">
														<a class="dropdown-item" href="#">Laboratorist</a>
														<a class="dropdown-item" href="#">Pharmacist</a>
														<a class="dropdown-item" href="#">Accountant</a>
														<a class="dropdown-item" href="#">Receptionist</a>
													</div>
												</div>
											</td>
											<td>$59698</td>
											<td><a class="btn btn-sm btn-primary" href="salary-view.html">Generate Slip</a></td>
											<td class="text-right">
												<div class="dropdown dropdown-action">
													<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="edit-salary.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
														<a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_salary"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="b_message.jsp" %>
			<div id="delete_salary" class="modal fade delete-modal" role="dialog">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-body text-center">
							<img src="${pageContext.request.contextPath}/resources/assets/img/sent.png" alt="" width="50" height="46">
							<h3>Are you sure want to delete this Salary?</h3>
							<div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
								<button type="submit" class="btn btn-danger">Delete</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="sidebar-overlay" data-reff=""></div>
		<%@ include file="b_footer.jsp" %>
	</body>
</html>
