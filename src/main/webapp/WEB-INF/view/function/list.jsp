<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/view/layout/head.jsp"%>
</head>
<body class="skin-default">
	<div class="wrapper">
		<%@ include file="/WEB-INF/view/layout/header.jsp"%>

		<%@ include file="/WEB-INF/view/layout/permission.jsp"%>

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
								<h3 class="box-title">Hover Data Table</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table class="table table-bordered">
									<tr>
										<th>#</th>
										<th>功能名称</th>
										<th>编号</th>
										<th>图标</th>
										<th>功能地址</th>
									</tr>
									<tr>
										<td>1.</td>
										<td>request.getServletPath()</td>
										<td><%=request.getServletPath()%></td>
										<td><span class="badge bg-red">55%</span></td>
										<td><i class="fa fa-fw fa-list"></i></td>
									</tr>
									<tr>
										<td>2.</td>
										<td>request.getRequestURI()</td>
										<td><%=request.getRequestURI()%></td>
										<td><span class="badge bg-red">55%</span></td>
										<td><i class="fa fa-fw fa-list"></i></td>
									</tr>
								</table>
							</div>
							<!-- /.box-body -->
							<div class="box-footer clearfix">
								<ul class="pagination pagination-sm no-margin pull-right">
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

		<%@ include file="/WEB-INF/view/layout/footer.jsp"%>
	</div>
</body>
</html>