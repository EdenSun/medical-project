<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>交易记录</title>
		<%@include file="/modules/web/include/common-head.jsp" %>
	</head>
	<body>
		<div class="wrapper">
		    <div class="box">
		        <div class="row row-offcanvas row-offcanvas-left">
		 
		          
		            <%@include file="/modules/web/include/user-sidebar.jsp" %>
		          
		            <!-- main right col -->
		            <div class="column col-sm-10 col-xs-11" id="main">
		                
		                <%@include file="/modules/web/include/user-top-nav.jsp" %>
		              
		              	<%-- 内容部分 --%>
		                <div class="padding">
		                    <div class="full col-sm-12">
								<div class="page-header">
								  <h1>交易记录<small></small></h1>
								</div>
								
								<div id="transactions-wrap">
									<div class="col-sm-6  col-sm-offset-3 trans-period-groupbtn">
										<div class="btn-group btn-group-justified" role="group" aria-label="Justified button group" id="periodBtnGroup">
									      <a href="javascript:void(0)" class="btn btn-success" role="button" data-period-type="all">所有</a>
									      <a href="javascript:void(0)" class="btn btn-default" role="button" data-period-type="week">一周内</a>
									      <a href="javascript:void(0)" class="btn btn-default" role="button" data-period-type="month">一个月内</a>
									      <a href="javascript:void(0)" class="btn btn-default" role="button" data-period-type="3month">三个月内</a>
									      <a href="javascript:void(0)" class="btn btn-default" role="button" data-period-type="halfYear">半年内</a>
									      <a href="javascript:void(0)" class="btn btn-default" role="button" data-period-type="oneYear">一年内</a>
									      
									    </div>
									</div>
									<div class="col-sm-12" id="transTableWrap">
										
									</div>
								
								<nav>
								  <ul class="pager">
								    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> 上一页</a></li>
								    <li class="next"><a href="#">下一页 <span aria-hidden="true">&rarr;</span></a></li>
								  </ul>
								</nav>

							</div>
								
							</div>
		                </div><!-- /padding -->
		                
		                <%-- END 内容部分 --%>
		            </div>
		            <!-- /main -->
		          
		        </div>
		    </div>
		</div>
	<table class="table table-hover table-with-bg-color" id="trans-table">
		<thead>
			<tr>
				<th>时间</th>
				<th>金额</th>
				<th>描述</th>
				<th>类型</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>2015-08-05</td>
				<td>￥280</td>
				<td>医生Mark看片费用</td>
				<td>个人</td>
			</tr>
		</tbody>
	</table>
	<script id="transTableTmpl" type="x-tmpl-mustache">
	<table class="table table-hover table-with-bg-color" id="trans-table">
		<thead>
			<tr>
				<th>时间</th>
				<th>金额</th>
				<th>描述</th>
				<th>类型</th>
			</tr>
		</thead>
		<tbody>
			{{#transactions}}
			<tr data-trans-id="{{transId}}">
				<td>{{transTime}}</td>
				<td>￥{{transAmount}}</td>
				<td>{{transDesc}}</td>
				<td>{{transType}}</td>
			</tr>
			{{/transactions}}
		</tbody>
	</table>
	</script>
	<%@include file="/modules/web/include/common-footer.jsp" %>
	<script src='<c:url value="/modules/web/assets/js/transaction.js"/>'></script>
	</body>
</html>