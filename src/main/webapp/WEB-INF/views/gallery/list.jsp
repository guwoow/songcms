<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/layout/head.jsp"%>
</head>
<body class="skin-default">
	<div class="wrapper">
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>

		<%@ include file="/WEB-INF/views/layout/permission.jsp"%>

		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					图库<small>管理内容中的图片，可以是新闻、广告、杂志……</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<section class="content container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-primary">
							<div class="box-header with-border">
								<h3 class="box-title">上传</h3>
							</div>
							<!-- /.box-header -->
							<!-- form start -->
							<form role="form" action="/default/upload" method="post" enctype="multipart/form-data" role="form">
								<div class="box-body">
									<div class="form-group">
										<input type="file" name="files" accept="image/jpeg,image/png,image/gif" /> <span id="upload-result"></span>
									</div>
								</div>
								<div class="box-footer">
									<button type="button" onclick="upload()" class="btn btn-primary">提交</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">图片预览</h3>
							</div>

							<div class="timeline-body">
								<c:forEach items="${list}" var="gallery">
									<img src="${gallery.path}" style="height:80px" class="margin">
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

		<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
	</div>
	<script type="text/javascript">
		function upload() {
			var uploadResult = document.getElementById("upload-result");
			uploadResult.style.color = "green";
			uploadResult.innerHTML = "正在上传.....";
			var formData = new FormData($("uploadForm")[0]);
			formData.append('Content-Type', 'multipart/form-data');
			formData.append('image', $('input[type=file]')[0].files[0]);
			$.ajax({
				url : "/gallery/upload",
				type : 'POST',
				data : formData,
				dataType : 'json',
				contentType : false,
				processData : false,
				cache : false,//防止缓存
				error : function(data) {
					alert("请求失败，网络异常")
					console.log(data);
				},
				success : function(data) {
					console.log(data);
					var code = data.STATUS;
					if (code == 200) {
						uploadResult.style.color = "green";
						uploadResult.innerHTML = "上传成功";
						imgUrl = data.data;
					} else {
						uploadResult.style.color = "red";
						uploadResult.innerHTML = "上传失败";
					}
				}

			});
		}
	</script>
</body>
</html>