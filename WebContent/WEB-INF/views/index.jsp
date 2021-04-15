<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TRANG CHỦ</title>
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
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive">
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
							ĐĂNG KÍ</div>
						<div
							class="dropdown-menu dropdown-menu-md-right dropdown-menu-lg-right"
							style="padding: 10px; background-color: white; width: 300px; border: 1px solid;">
							<form class="was-validated" action="content/dangki.htm"
								method="post">
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Email</label>
									<div class="col-sm-10">
										<input type="email" name="email"
											class="form-control is-invalid" id="inputEmail"
											placeholder="Email" required>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Phone</label>
									<div class="col-sm-10">
										<input type="tel" name="phone" class="form-control is-invalid"
											id="inputnumber" placeholder="Số Điện Thoại (10-11) So"
											pattern="[0-9]{10,11}" required>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-10">
										<button type="submit" class="btn btn-primary">ĐĂNG KÍ</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</li>
				<li class="nav-item">
					<div class="nav-link dropdown" style="cursor: pointer;">
						<div class="dropdown-toggle" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" id="dropdownmenu">
							DANH MỤC</div>
						<div
							class="dropdown-menu dropdown-menu-md-right dropdown-menu-lg-right"
							style="padding: 10px; font-weight: bold; background-color: white; border: 1px solid; font-weight: bold;">
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
								<img style="border-radius: 50%; max-width:180px;"
									src="${blog.authorImage}" />
							</h4>
							<h3>
								<small><i>Tác giả: </i></small>${blog.author}
								</h3>
								<div style="overflow: auto;"><i >" ${blog.authorDiscription} "</i><br/></div>
								<p class="btn-link">Mail: ${blog.mailAuthor}</p>
								<p class="btn-link">Phone: ${blog.phone}</p>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- content -->
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-8"
				style="background-color: #25a186; width: 100%; color: white; padding: 5%; height: 350px; overflow-y: auto; border: 2px dotted #007bff;">
				<h2>Chào mừng bạn đến với câu chuyện của tôi</h2>
				<p>Nơi mà chúng ta có thể chia sẻ với nhau những kinh nghiệm và
					cuộc sống.</p>
				<p>
					Những chủ đề mà tôi chia sẻ với các bạn có một số sẽ là quan điểm
					và góc nhìn riêng của tôi. Nên sẽ không tránh khỏi những tranh
					luận, tôi hi vọng là mọi người có thể thảo luận, chia sẻ với nhau
					trên góc độ là đóng góp và xây dựng. Nếu bạn muốn đóng góp chia sẻ
					câu chuyện và kinh nghiệm của bạn thì có thể liên hệ với tôi qua
					mục <strong>Tác Giả</strong>.<br>Rất cảm ơn và hoan nghênh các
					bạn đến với Blog chia sẻ của tôi.
				</p>
			</div>
			<div class="col-md-4 col-sm-4 "
				style="padding: 0px 2px 2px 2px; box-sizing: border-box;">
				<div id="sliders" class="carousel slide " data-ride="carousel"
					style="border: 1px solid #25a186;">
					<ul class="carousel-indicators">
						<li data-target="#sliders" data-slide-to="0" class="active"></li>
						<li data-target="#sliders" data-slide-to="1"></li>
						<li data-target="#sliders" data-slide-to="2"></li>
					</ul>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="configauthor/slide-logo1.jpg" style="width: 100%; height: 350px;">
							<div class="carousel-caption">
								<h1 class="display-4"
									style="color: white; background-color: #007bff;">WellCome</h1>
							</div>
						</div>
						<div class="carousel-item">
							<img src="configauthor/slide-logo2.jpg" style="height: 350px; width: 100%;">
							<div class="carousel-caption">
								<h3 class="text-white">Life</h3>
							</div>
						</div>
						<div class="carousel-item">
							<img src="configauthor/slide-logo3.jpg" style="height: 350px; width: 100%;">
							<div class="carousel-caption">
								<h3 class="text-white" style="background-color: #007bff;">Challenge</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Two Column Section -->
	<c:forEach var="bv" items="${list}" begin="${begins}" end="${ends}"
		varStatus="x">
		<div class="container-fluid padding"
			style="margin-top: 50px; margin-bottom: 50px;">
			<div class="row padding">
				<div class="col-md-8 col-lg-4" style="padding-left: 5%;">
					<a href="contents/${list[x.index].maBaiViet}.htm"><img
						class="img-fluid" src="files/${list[x.index].hinhMoTa}"
						style="border: 1px solid #007bff; height: 200px; width: 100%;"></a>
					<small
						style="padding: 5px; font-size: 20px; color: gray; border-bottom: 1px solid #25a186"><fmt:formatDate
							value="${list[x.index].thoiGian}" pattern="dd/MM/yyyy" /></small> <br />
					<h6 style="color: #007bff; padding: 10px;">*Chuyên Mục:
						${list[x.index].maDanhMuc.tenDanhMuc}</h6>
				</div>
				<div class="col-md-12 col-lg-8" style="padding-right: 5%;">
					<h2>
						<a href="contents/${list[x.index].maBaiViet}.htm"
							style="color: #25a186; text-decoration: none;">${list[x.index].tieuDe}</a>
					</h2>
					<p>${list[x.index].moTa}</p>
				</div>
			</div>
		</div>
	</c:forEach>
	<div class="container-fluid padding" style="display:${display};">
		<div class="row text-center padding">
			<div class="col-md-12 col-sm-12">
				<form method="get">
					<button class="btn btn-outline-primary" onclick="pre()">Quay
						Lại</button>
					<input type="text" name="page" value="${page}" id="page"
						style="text-align: center; max-width: 70px;"
						class="border-primary" />
					<button class="btn btn-outline-primary" onclick="next()">Xem
						Tiếp</button>
				</form>
			</div>
		</div>
		<div class="row text-center padding">
			<div class="col-md-12 col-sm-12" style="padding: 10px; color: red;">
				<small>Page ${pagecurrent} Of ${pagesize}</small>
			</div>
		</div>
	</div>
	<!-- Footer -->
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
		function next() {
			var values = document.getElementById("page").value;
			values = Number(values) + 1;
			document.getElementById("page").value = values;
		}
		function pre() {
			var values = document.getElementById("page").value;
			if (values > 1) {
				values = Number(values) - 1;
			}
			document.getElementById("page").value = values;
		}
	</script>
</body>
</html>