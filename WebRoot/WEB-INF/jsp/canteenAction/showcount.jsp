<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
	<title>论坛</title>
	<%@ include file="/WEB-INF/jsp/public/header.jspf" %>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/forum.css" />
</head>
<body>
<div id="Title_bar">
	<div id="Title_bar_Head">
		<div id="Title_Head"></div>
		<div id="Title">
			<!--页面标题-->
			<img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 论坛 </div>
		<div id="Title_End"></div>
	</div>
</div>
<div id="MainArea">
	<center>
		<div class="ForumPageTableBorder" style="margin-top: 25px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			
				<!--表头-->
				<h3>食堂就餐人数:${canteenusercount}人</h3>
				
				<tr height="3"><td colspan="9"></td></tr>
			</table>
		</div>
	</center>
</div>
</body>
</html>
	