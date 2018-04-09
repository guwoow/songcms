<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/view/layout/head.jsp"%>
</head>
<body class="skin-blue">
	<div class="wrapper">
		<%@ include file="/WEB-INF/view/layout/header.jsp"%>

		<%@ include file="/WEB-INF/view/layout/permission.jsp"%>

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

			</section>
		</div>

		<%@ include file="/WEB-INF/view/layout/footer.jsp"%>
	</div>
</body>
</html>