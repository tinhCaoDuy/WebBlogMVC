<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Truy Cập Quản Lý</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
</style>
</head>
<body>
	<!-- Navigation -->
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
				style="margin-left: auto; margin-right: auto; padding: 20px 100px 50px 50px; background-color: #25a186;">
				<h3 style="margin-bottom: 20px; color: white;">Quản lý Website</h3>
				<form action="managers/login.htm" method="post">
					<div class="form-group">
						<label for="TaiKhoan" style="font-weight: bold;">Tài Khoản</label>
						<input type="text" class="form-control" id="Username"
							name="username" aria-describedby="emailHelp"
							placeholder="tài khoản quản trị" required>
					</div>
					<div class="form-group">
						<label for="MatKhau" style="font-weight: bold;">Mật Khẩu</label> <input
							type="password" class="form-control" id="Password"
							name="password" placeholder="Mật Khẩu" required>
					</div>
					<button type="submit" class="btn btn-light">Đăng Nhập</button>
				</form>
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
	<div class="modal fade" id="message" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 style="color: blue;">Thông Báo</h5>
				</div>
				<div class="modal-body was-validated">
					<p>${message}</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$('#message').modal('${announce}')
	</script>
</body>
</html>