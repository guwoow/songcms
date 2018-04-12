<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer class="main-footer">
	<div class="pull-right hidden-xs">Anything you want</div>
	<strong>Copyright &copy; 2016 <a href="#">Company</a>.
	</strong> All rights reserved.
</footer>
<script src="<%=request.getContextPath()%>/resources/jQuery/3.3.1/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/AdminLTE/2.4.3/js/adminlte.js"></script>
<script type="text/javascript">
	$(function() {
		/* alert(window.location.pathname);
		alert(window.location.href);
		alert(window.location.port);
		alert(window.location.protocol);
		alert(window.location.hash);
		alert(window.location.host);
		alert(window.location.search); */
		var liCurrent = $("a[href='" + window.location.pathname + "']").parent();
		$(liCurrent).parent().parent().addClass("active");
		$(liCurrent).addClass("active");
	});
</script>