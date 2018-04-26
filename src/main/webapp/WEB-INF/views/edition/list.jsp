<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					Page Header <small>Optional description</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<section class="content container-fluid">

				<!--------------------------
        		| Your Page Content Here |
        		-------------------------->
				<ul>
					<li><%=request.getServletPath()%></li>
					<li><%=System.getProperty("cms.webapp")%></li>
					<li><%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/"%></li>
					<li><%=request.getSession().getServletContext().getRealPath("")%></li>
				</ul>

			</section>
		</div>

		<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
	</div>
</body>
</html>