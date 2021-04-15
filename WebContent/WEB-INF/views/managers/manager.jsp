<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản Lý</title>
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

table, th, td {
	border: 1px solid #dedede;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}
</style>
</head>
<body>
	<div class="container-fluid "
		style="margin-top: 50px; margin-bottom: 50px;">
		<div class="row" style="min-height: 269px;">
			<div
				style="margin-left: auto; margin-right: auto; padding: 20px 70px 40px 40px; background-color: #25a186;">
				<h3 style="margin-bottom: 20px; color: white;">Quản Lý</h3>
				<div class="col-md-12 col-sm-12" style="margin-bottom: 20px;">
					<a class="btn btn-info" href="insertcatalog.htm">Chỉnh Sửa Danh
						Mục</a>
				</div>
				<div class="col-md-12 col-sm-12" style="margin-bottom: 20px;">
					<button type="button" class="btn btn-info" data-toggle="modal"
						data-target="#thongbao">Thông Báo Mail</button>
				</div>
				<div class="col-md-12 col-sm-12" style="margin-bottom: 20px;">
					<button type="button" class="btn btn-info" data-toggle="collapse"
						data-target="#nguoidangki">Danh Sách Đăng Kí Mail</button>
				</div>
				<div class="col-md-12 col-sm-12" style="margin-bottom: 20px;">
					<a class="btn btn-info" data-toggle="collapse"
						data-target="#content" style="color: white;">Chỉnh Bài Viết</a>
					<div class="col-md-12 col-sm-12 collapse" id="content"
						style="padding: 10px; background-color: white; border: 1px solid;">
						<button class="close float-none" type="button"
							data-toggle="collapse" data-target="#content">
							<span>&times;</span>
						</button>
						<br /> <br /> <a class="btn btn-primary"
							href="insertcontent.htm">Thêm Bài Viết</a> <br /> <br />
						<button class="btn btn-primary" data-toggle="collapse"
							data-target="#editcontent">Sửa hoạc Xóa Bài Viết</button>
					</div>
				</div>
				<div class="col-md-12 col-sm-12" style="margin-bottom: 20px;">
					<a class="btn btn-info" href="home.htm?page=1">Quay Về Trang
						Chủ</a>
				</div>
				<div class="col-md-12 col-sm-12" style="margin-bottom: 5px;">
					<a class="btn btn-info" href="logout.htm" onclick="return confirm('Bạn có chắc muốn Đăng Xuất Khỏi Trang Quản Lý?');">Đăng Xuất Khỏi Quản
						Lý</a>
				</div>
			</div>
		</div>
		<div class="modal fade" id="thongbao" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 style="color: blue;">Thông Báo Mail Cho Người Đăng Kí</h5>
					</div>
					<div class="modal-body was-validated">
						<form id="actionsend" method="post" style="margin-left: 20px;">
							<div class="form-group">
								<label for="send-name" class="col-form-label">Gửi Cho:</label> <select
									onchange="validateSelectBox(this)">
									<option value="all">Tất Cả</option>
									<option value="onepeople">Từng người</option>
								</select>
							</div>
							<div class="form-group">
								<label for="to-name" class="col-form-label">Địa Chỉ Mail
									Người Nhận:</label> <input type="email" class="form-control is-invalid"
									id="to-name" name="to" placeholder="To" required
									disabled="true">
							</div>
							<div class="form-group">
								<label for="from-name" class="col-form-label">Tên Định
									Danh(người gửi):</label> <input type="text"
									class="form-control is-invalid" id="from-name" name="from"
									placeholder="From" required>
							</div>
							<div class="form-group">
								<label for="subject-name" class="col-form-label">Tiêu Đề
									Mail:</label> <input type="text" class="form-control is-invalid"
									id="subject-name" name="subject" placeholder="Subject" required>
							</div>
							<div class="form-group">
								<label for="subject-name" class="col-form-label">Nội
									Dung Mail:</label>
								<textarea class="form-control is-invalid" name="body"
									placeholder="Body" rows="5" required></textarea>
							</div>
							<button class="btn btn-outline-primary"
								onclick="return confirm('Bạn có chắc muốn gửi Mail Này?');">Gửi
								Mail</button>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row collapse" id="nguoidangki" style="margin:6%;">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<button class="close btn-light" type="button"
						data-toggle="collapse" data-target="#nguoidangki"
						style="border: 1px solid gray;">
						<span>&times;</span>
					</button>
					<h5 style="color: blue;">Danh Sách Người Đăng Kí Nhận Bài Viết</h5>
				</div>
				<table class="table table-hover col-md-12 col-sm-12">
					<tr>
						<th>STT</th>
						<th>Email</th>
						<th>Số Điện Thoại</th>
					</tr>
					<c:forEach var="u" items="${dsRegister}" varStatus="x" begin="0"
						end="${sizeRe}">
						<tr>
							<td>${x.index + 1}</td>
							<td style="max-width: 40em;">${u.eMail}</td>
							<td>${u.sdt}</td>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="row collapse ${show}" id="editcontent">
			<table class="table table-hover col-md-12 col-sm-12">
				<button class="close btn-light" type="button" data-toggle="collapse"
					data-target="#editcontent" style="border: 1px solid gray;">
					<span>&times;</span>
				</button>
				<tr>
					<th>STT</th>
					<th>Tên Bài Viết</th>
					<th>Thời Gian</th>
					<th>
						<form action="managers/select.htm" method="post">
							<label>Danh Mục : </label> <select class="btn btn-dark"
								style="min-width: 100px;" name="catalog">
								<option value="all">ALL</option>
								<c:forEach items="${danhMuc}" var="x">
									<option value="${x.maDanhMuc}">${x.tenDanhMuc}</option>
								</c:forEach>
							</select>
							<button class="btn btn-info">Reloads</button>
						</form>
					</th>
				</tr>
				<c:forEach var="u" items="${dsBv}" varStatus="x" begin="0"
					end="${size}">
					<tr>
						<td>${x.index + 1}</td>
						<td style="max-width: 40em;">${u.tieuDe}</td>
						<td><fmt:formatDate value="${u.thoiGian}"
								pattern="dd/MM/yyyy" /></td>
						<td><small>[Mã Danh Mục: ${u.maDanhMuc.maDanhMuc}] </small> <a
							class="btn btn-danger" href="contents/delete/${u.maBaiViet}.htm"
							onclick="return confirm('Bạn có chắc muốn xóa không?')">Delete</a>
							<a class="btn btn-success"
							href="contents/update/${u.maBaiViet}.htm">Update</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
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
		document.getElementById('actionsend').action = "mail/all.htm";
		$('#message').modal('${announce}')
		function validateSelectBox(obj) {
			// Lấy danh sách các options
			var options = obj.children;
			for (var i = 0; i < options.length; i++) {
				if (options[i].selected) {
					if (options[i].value.localeCompare("all") == 0) {
						document.getElementById('to-name').disabled = true;
						document.getElementById('actionsend').action = "mail/"
								+ options[i].value + ".htm";
					}
					if (options[i].value.localeCompare("onepeople") == 0) {
						document.getElementById('to-name').disabled = false;
						document.getElementById('actionsend').action = "mail/"
								+ options[i].value + ".htm";
					}
				}
			}
			// Gán kết quả vào div#resul
		}
	</script>
</body>
</html>