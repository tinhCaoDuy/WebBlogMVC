<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog G</title>
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

.detail-comment {
	border: 1px solid #dedede;
	padding: 3%;
	margin: 1%;
}

.comment {
	border-right: 1px solid #dedede;
	border-left: 1px solid gray;
	padding: 1%;
	margin: 20px 0 20px 0;
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
	<!-- Image Slider -->
	<div class="container">
		<div class="row">
			<div class=" col-md-12 col-sm-12">
				<h1
					style="background-color: #25a186; width: 100%; color: white; padding: 5%; border-radius: 5px;">${contentWrite.tieuDe}</h1>
			</div>
		</div>
		<div class="row" style="margin: 3%">
			<div class="col-md-9 col-sm-9" style="padding: 0px;">
				<small
					style="padding: 5px; font-size: 20px; color: gray; border-bottom: 1px solid #25a186;"><fmt:formatDate
						value="${contentWrite.thoiGian}" pattern="dd/MM/yyyy" /></small>
				<div class="discription" style="margin: 15px 0px 15px 0px;">${contentWrite.moTa}</div>
				<img class="img-fluid" src="files/${contentWrite.hinhMoTa}"
					style="max-height: 400px; width: 100%; padding: 0 4% 4% 4%;">
				<div class="contentbody">${contentWrite.noiDung}</div>
			</div>
			<div class="col-md-3 col-sm-3"></div>
		</div>
		<div class="row">
			<div class="col-md-9 col-sm-9">
				<hr />
				<h3 style="font-family: cursive; margin-left: 6%;">Thảo Luận</h3>
			</div>
		</div>
		<div class="row" style="margin: 3%;">
			<div class="col-md-7 col-sm-7"
				style="border: 1px solid #dedede; padding: 10px;">
				<form action="contents/comment.htm" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Email</label> <input type="email"
							class="form-control" id="exampleInputEmail1"
							placeholder="Nhập Email" name="commentMail" required>
					</div>
					<div class="form-group">
						<label for="names">Tên</label> <input type="text"
							class="form-control" id="names" placeholder="Tên Người Bình Luận"
							name="commentName" required>
					</div>
					<div class="form-group">
						<label for="comments">Nội Dung Bình Luận</label>
						<textarea class="form-control" id="comments" rows="7"
							placeholder="Nhập Nội Dung Bình Luận" name="commentContent"
							required></textarea>
					</div>
					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="checks"
							value="${contentWrite.maBaiViet}" name="CommentMaBv" required>
						<label class="form-check-label" for="checks">Xác Nhận</label>
					</div>
					<button type="submit" class="btn btn-primary float-right">POST</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 col-sm-8">
				<hr />
				<c:forEach items="${binhLuan}" varStatus="x" begin="${begins}" end="${ends}">
					<div class="comment">
						<h4>${binhLuan[x.index].tenBl}</h4>
						<small>Ngày <fmt:formatDate value="${binhLuan[x.index].thoiGian}"
								pattern="dd/MM/yyyy" /></small>
						<div class="detail-comment">
							<p>${binhLuan[x.index].noiDung}</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="row padding" style="display:${display};margin-bottom:40px;">
			<div class="col-md-12 col-sm-12">
				<form method="post">
					<button class="btn btn-outline-primary" onclick="pre()">Quay
					Lại</button>
					<input type="text" name="addcomment" value="${pagecomment}" id="addcomment"
						style="text-align: center; max-width: 70px;"
						class="border-primary" />
					<button class="btn btn-outline-primary" onclick="next()">Xem
						Thêm Bình Luận</button>
				</form>
			</div>
			<div class="col-md-12 col-sm-12" style="padding: 10px; color: red;margin-left:40px;">
				<small>comment ${pagecurrent} Of ${pagesize}</small>
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
	<script type="text/javascript">
		function next() {
			var values = document.getElementById("addcomment").value;
			values = Number(values) + 1;
			document.getElementById("addcomment").value = values;
		}
		function pre() {
			var values = document.getElementById("addcomment").value;
			if (values > 1) {
				values = Number(values) - 1;
			}
			document.getElementById("addcomment").value = values;
		}
	</script>
</body>
</html>