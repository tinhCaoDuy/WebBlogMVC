<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DUYỆT MÁY CHỦ UPLOAD FILE</title>
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
</style>
</head>
<body>
	<!-- Navigation -->
	<div class="container" style="margin: auto; margin-top: 50px;">
		<div class="row">
			<div class="col-md-8 col-sm-8">
				<form action="content/uploadfile.htm" enctype="multipart/form-data" method="post">
					<div class="input-group">
						<div class="custom-file">
							<input type="file" name="image" class="custom-file-input"
								id="validatedCustomFile" required> <label
								class="custom-file-label btn-outline-dark"
								for="validatedCustomFile">Choose file...</label>
						</div>
						<div class="input-group-append">
							<button class="btn btn-outline-primary" type="submit"
								id="inputGroupFile">Upload</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="row" style="margin-top: 20px; display: ${display};"
			id="copylink">
			<div class="col-md-8 col-sm-8">
				<input class="border-success" type="text" value="${link}" id="myInput"
					style="width: 80%; padding: 4px;" />
				<button class="btn btn-primary" onclick="myFunction()">Copy
					Link ảnh</button>
			</div>
		</div>
	</div>
	<script>
		// document.getElementById("inputGroupFile").onclick =function () {
		// document.getElementById("copylink").style.display = 'block';
		// };
		function myFunction() {
			/* Get the text field */
			var copyText = document.getElementById("myInput");
			/* Select the text field */
			copyText.select();
			copyText.setSelectionRange(0, 99999);
			/*For mobile devices*/
			/* Copy the text inside the text field */
			document.execCommand("copy");
			/* Alert the copied text */
			alert("Đã copy link hình: " + copyText.value);
		}

		$(document).on(
				'change',
				'.custom-file-input',
				function(event) {
					$(this).next('.custom-file-label').html(
							event.target.files[0].name);
				})
	</script>
</body>
</html>