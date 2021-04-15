<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thêm Bài Viết</title>
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
				<li class="nav-item active"><a class="nav-link" href="home.htm?page=1">TRANG
						CHỦ</a></li>
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
								<a class="dropdown-item" href="home/theloai/${u.maDanhMuc}.htm?page=1">${u.tenDanhMuc}</a>
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
				<h3 style="margin-bottom: 20px; color: white;">${tacVuName}</h3>
				<form class="was-validated" action="contents/${tacVuLink}"
					enctype="multipart/form-data" method="post">
					<div class="form-group row">
						<label class="col-sm-2 col-form-label lbl">Danh Mục</label>
						<div class="col-sm-10">
							<select style="min-width: 100px;" name="catalog">
								<c:forEach items="${DanhMuc}" begin="0" end="${ends}"
									varStatus="status">
									<c:choose>
										<c:when
											test="${DanhMuc[status.index].maDanhMuc.equals(tacVuMaDM)}">
											<option value="${DanhMuc[status.index].maDanhMuc}" selected>${DanhMuc[status.index].tenDanhMuc}</option>
										</c:when>
										<c:otherwise>
											<option value="${DanhMuc[status.index].maDanhMuc}">${DanhMuc[status.index].tenDanhMuc}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label for="title" class="col-sm-2 col-form-label lbl">Tiêu
							Đề:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control is-invalid" name="title"
								id="title" placeholder="Tiêu Đề Bài Viết" value="${bv.tieuDe}"
								required>
						</div>
					</div>
					<div class="form-group row">
						<label for="discription" class="col-sm-2 col-form-label lbl">Mô
							Tả:</label>
						<div class="col-sm-10">
							<textarea class="form-control is-invalid" name="discription"
								id="discription" rows="3" cols="100"
								placeholder="Nhập Mô Tả Cho Bài Viết" required>${bv.moTa}</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="image" class="col-sm-2 col-form-label">Hình Mô
							Tả:</label>
						<div class="col-sm-10">
							<input type="file" class="btn-light" id="image" name="image"
								placeholder="Chọn Hình Mô Tả">
						</div>
						<img alt="Hình Mô Tả Cũ" src="files/${bv.hinhMoTa}" style="width:200px;height:150px;border: 1px solid blue;margin: auto;display:${display};">
					</div>
					<div class="form-group row">
						<label for="discription" class="col-sm-2 col-form-label lbl">Nội
							Dung Bài Viết:</label>
						<div class="col-sm-10">
							<textarea class="form-control is-invalid" name="content"
								id="contents" placeholder="Nhập Nội Dung Cho Bài Viết"
								style="max-width: 700px;" required>
								${bv.noiDung}
							</textarea>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary">ĐĂNG</button>
						</div>
					</div>
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
	<script>
		config = {};
		config.entities_latin = false;
		config.width = 700;
		config.language = 'vi';
		config.filebrowserImageBrowseUrl = 'upload.htm';
		config.toolbarGroups = [
				{
					name : 'clipboard',
					groups : [ 'undo', 'clipboard' ]
				},
				{
					name : 'editing',
					groups : [ 'find', 'selection', 'spellchecker', 'editing' ]
				},
				{
					name : 'links',
					groups : [ 'links' ]
				},
				{
					name : 'insert',
					groups : [ 'insert' ]
				},
				{
					name : 'forms',
					groups : [ 'forms' ]
				},
				{
					name : 'tools',
					groups : [ 'tools' ]
				},
				{
					name : 'document',
					groups : [ 'mode', 'document', 'doctools' ]
				},
				{
					name : 'others',
					groups : [ 'others' ]
				},
				'/',
				{
					name : 'basicstyles',
					groups : [ 'basicstyles', 'cleanup' ]
				},
				{
					name : 'paragraph',
					groups : [ 'list', 'indent', 'blocks', 'align', 'bidi',
							'paragraph' ]
				}, {
					name : 'colors',
					groups : [ 'colors' ]
				}, {
					name : 'styles',
					groups : [ 'styles' ]
				}, '/', '/', '/', '/', '/', '/', {
					name : 'about',
					groups : [ 'about' ]
				} ];
		config.removeButtons = 'Underline,Subscript,Superscript,About,Anchor';

		CKEDITOR.replace('contents', config);
	</script>
</body>
</html>