<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<aside class="main-sidebar">
	<section class="sidebar">
		<div class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="搜索..." /> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn" class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</div>

		<ul class="sidebar-menu" data-widget="tree">
			<li class="treeview"><a href="javascript:void(0)"><i class="fa fa-folder"></i> <span>系统管理</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i>
				</span> </a>
				<ul class="treeview-menu">
					<li><a href="/function/list"><i class="fa fa-folder-open"></i> 功能包</a></li>
					<li><a href="/edition/list"><i class="fa fa-list"></i> 版本控制</a></li>
				</ul></li>
			<li class="treeview"><a href="javascript:void(0)"><i class="fa fa-folder"></i> <span>内容管理</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i>
				</span> </a>
				<ul class="treeview-menu">
					<li><a href="/gallery/list"><i class="fa fa-photo"></i>图库</a></li>
				</ul></li>
		</ul>
	</section>
</aside>