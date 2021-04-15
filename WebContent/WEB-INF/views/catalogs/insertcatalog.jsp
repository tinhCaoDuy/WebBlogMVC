<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thêm Danh Mục</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="ckeditor/ckeditor.js"></script>
<style type="text/css">
body {
	margin: 0px;
	border: 0px;
	padding: 0px;
	content: 0px;
}

.carousel-caption h1 {
	font-size: 200%;
	text-transform: uppercase;
	text-shadow: 1px 1px 10px #000;
	font-family: initial;
}

.carousel-caption h3 {
	font-weight: 400;
}

footer {
	background-color: #8a8a8a;
	color: #00152b;
	padding-top: 2rem;
}

hr.light {
	width: 60%;
	background-color: black;
}

.navbar-nav {
	font-weight: bold;
}

.lbl {
	padding: 0px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
	<div class="container-fluid">
		<a href="home.htm?page=1" class="h1"
			style="font-family: cursive; border: 1px solid black; padding: 0px 3px 5px 3px; text-decoration: none; color: black;">${blog.webname}</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
			<span class="navbar-toggler-icon"></span>
		</button>	
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="home.htm?page=1">TRANG CHỦ</a></li>
				<li class="nav-item">
					<div class="nav-link dropdown" style="cursor: pointer;">
						<div class="dropdown-toggle" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" id="dropdownmenu">
							DANH MỤC</div>
						<div
							class="dropdown-menu dropdown-menu-md-right dropdown-menu-lg-right"
							style="padding: 10px; font-weight: bold; background-color: white; border: 1px solid;">
							<!-- Dropdown menu links -->
							<c:forEach var="u" items="${DanhMuc}">
								<a class="dropdown-item"
									href="home/theloai/${u.maDanhMuc}.htm?page=1">${u.tenDanhMuc}</a>
							</c:forEach>
						</div>
					</div>
				</li>
				<li class="nav-item">
					<div class="nav-link" style="cursor: pointer;">
						<div data-toggle="collapse" data-target="#about"
							aria-haspopup="true" aria-expanded="false">TÁC GIẢ</div>
						<div
							class="dropdown-menu dropdown-menu-right col-md-4 col-sm-4 col-lg-4 collapse"
							id="about"
							style="padding: 10px; background-color: white; border: 1px solid; color: black;">
							<!-- Dropdown menu links -->
							<button class="close float-none" type="button"
								data-toggle="collapse" data-target="#about">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 style="text-align: center;">
								<img style="border-radius: 50%; max-width: 200px;"
									src="${blog.authorImage}" />
							</h4>
							<h3>
								<small><i>Tác giả: </i></small>${blog.author}
								</h2>
								<i>" ${blog.authorDiscription} "</i> <br />
								<p class="btn-link">Mail: ${blog.mailAuthor}</p>
								<p class="btn-link">Phone: ${blog.phone}</p>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- Two Column Section -->
	<div class="container-fluid "
		style="margin-top: 50px; margin-bottom: 50px;">
		<div class="row" style="min-height: 269px;">
			<div
				style="margin-left: auto; margin-right: auto; padding: 20px 70px 40px 40px; background-color: #25a186;">
				<h3 style="margin-bottom: 20px; color: white;">Thêm Danh Mục</h3>
				<form class="was-validated" action="catalogs/insert.htm"
					method="post">
					<div class="form-group row">
						<label for="title" class="col-sm-2 col-form-label lbl">Mã
							Danh Mục:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control is-invalid"
								name="madanhmuc" id="title" placeholder="Nhập Mã Danh Mục"
								required>
						</div>
					</div>
					<div class="form-group row">
						<label for="title" class="col-sm-2 col-form-label lbl">Danh
							Mục:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control is-invalid"
								name="tendanhmuc" id="title" placeholder="Nhập Tên Danh Mục"
								required>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary">Thêm</button>
						</div>
					</div>
				</form>
				<table class="table table-hover col-sm-12" style="color: white;">
					<tr>
						<th>Mã Danh Mục</th>
						<th>Tên Danh Mục</th>
						<th></th>
					</tr>
					<c:forEach var="u" items="${DanhMuc}">
						<tr>
							<td>${u.maDanhMuc}</td>
							<td>${u.tenDanhMuc}</td>
							<td><a class="btn btn-light"
								href="catalogs/delete/${u.maDanhMuc}.htm"
								onclick="return confirm('Bạn có chắc muốn xóa không?')">Delete</a>
								<button type="button" class="btn btn-light" data-toggle="modal"
									data-target="#editTenDanhMucModal"
									data-madanhmuc="${u.maDanhMuc}"
									data-tendanhmuc="${u.tenDanhMuc}">Update</button></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

	<footer>
	<div class="container-fluid padding">
		<div class="row text-center">
			<div class="col-md-12">
				<a href="home.htm?page=1"><img src="${blog.webicons}"></a>
				<hr class="light" />
				<pclass"">Mail: ${blog.mail}
				</p>
				<p>Address: ${blog.address}</p>
				<p>Tel: ${blog.tel}</p>
				<p>Copyright &copy ${blog.year} , Bản quyển thuộc
					${blog.webname}</p>
			</div>
		</div>
	</div>
	</footer>
	<div class="modal fade" id="editTenDanhMucModal" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5>Sửa Danh Mục</h5>
				</div>
				<div class="modal-body was-validated">
					<div class="form-group">
						<label for="recipient-name" class="col-form-label modal-title"></label>
					</div>
					<form method="post" id="editDM">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Tên
								Danh Mục Mới: </label> <input type="text"
								class="form-control is-invalid" id="recipient-name"
								name="tenDanhMuc" required>
						</div>
						<button type="submit" class="btn btn-primary">Sửa</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#editTenDanhMucModal').on('show.bs.modal',function(event) {
			var button = $(event.relatedTarget) // Button that triggered the modal
			var tenDM = button.data('tendanhmuc') // Extract info from data-* attributes
			var maDM = button.data('madanhmuc')
			var modal = $(this)
			modal.find('.modal-title').text('Tên Danh Mục Cũ:  ' + tenDM)
			document.getElementById('editDM').action = "catalogs/update/"+ maDM + ".htm";
		})
	</script>
</body>
</html>