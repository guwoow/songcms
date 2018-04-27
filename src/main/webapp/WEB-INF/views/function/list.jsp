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
					功能包<small>管理系统中的包、菜单和功能点。</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>首页</a></li>
					<li><a href="#">系统设置</a></li>
					<li class="active">功能包</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<div class="btn-group">
									<button type="button" class="btn btn-default btn-flat" data-toggle="modal" data-target="#exampleModal">
										<i class="fa fa-plus"></i> 新增
									</button>
									<button type="button" class="btn btn-default btn-flat">
										<i class="fa fa-edit"></i> 修改
									</button>
									<button type="button" class="btn btn-warning btn-flat">
										<i class="fa fa-trash"></i> 删除
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table class="table table-bordered" data-toggle="table" data-url="/function/functionList" data-height="500" data-pagination="true" pageSize="1">
									<thead>
										<tr>
											<th data-field="isEnable" data-checkbox="true"></th>
											<th data-field="functionId" data-align="left">主键</th>
											<th data-field="name" data-align="center" data-formate="">名称</th>
											<th data-field="ico" data-align="center">图标</th>
										</tr>
									</thead>
								</table>
							</div>
							<!-- /.box-body -->
							<div class="box-footer clearfix">
								<ul class="pagination no-margin pull-right">
									<li><a href="#">&laquo;</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">6</a></li>
									<li><a href="#">&raquo;</a></li>
								</ul>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.row -->
			</section>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">编辑功能包</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="txtName">功能名称</label> <input type="text" class="form-control" id="txtName" placeholder="功能名称">
						</div>
						<div class="form-group">
							<label for="txtCode">编码</label> <input type="text" class="form-control" id="txtCode" placeholder="标识一个功能">
						</div>
						<div class="form-group">
							<label for="txtUrl">地址</label> <input type="text" class="form-control" id="txtUrl" placeholder="标识一个功能">
						</div>
						<div class="form-group">
							<label for="txtIco">图标</label> <input type="text" class="form-control" id="txtIco" placeholder="标识一个功能">
						</div>
						<div class="form-group">
							<label for="txtCode">描述</label>
							<textarea id="txtSummary" class="form-control" rows="3" placeholder="Enter ..."></textarea>
						</div>

						<div id="divResult" style="display: none" class="form-group">
							<div id="divAlert" class="alert">
								<strong>成功!</strong> 指定操作成功提示信息。
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" id="btnCancel" class="btn btn-secondary" data-dismiss="modal">取消</button>
						<button type="button" id="btnSave" class="btn btn-primary">保存</button>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
	</div>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap-table/bootstrap-table.min.css">
	<script src="<%=request.getContextPath()%>/resources/bootstrap-table/bootstrap-table.min.js"></script>
	<script type="text/javascript">
		$("#btnSave").on("click", function() {
			$.ajax({
				type : "POST",
				url : "/function/save",
				data : {
					name : $("#txtName").val(),
					code : $("#txtCode").val(),
					url : $("#txtUrl").val(),
					ico : $("#txtIco").val(),
					summary : $("#txtSummary").val()
				},
				dataType : 'json',
				success : function(data) {
					console.log(data);
					var code = data.STATUS;
					if (code == 200) {
						$("#divResult").show();
						$("#divAlert").addClass("alert-success");
					} else {
						$("#divResult").show();
						$("#divAlert").addClass("alert-danger");
					}
				}
			});
		});
	</script>
</body>
</html>