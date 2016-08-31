<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<title>性别统计</title>
<%@ include file="/WEB-INF/jsp/public/header.jspf"%>
</head>
<body>

	<div id="Title_bar">
		<div id="Title_bar_Head">
			<div id="Title_Head"></div>
			<div id="Title">
				<!--页面标题-->
				<img border="0" width="13" height="13"
					src="${pageContext.request.contextPath}/style/images/title_arrow.gif" />
				性别统计
			</div>
			<div id="Title_End"></div>
		</div>
	</div>

	<div id="MainArea">
		<table cellspacing="0" cellpadding="0" class="TableStyle">
			<h3 style="text-align:center">男性员工列表(${manusercount}人)</h3>
			<!-- 表头-->
			<thead>
				<tr align=center valign=middle id=TableTitle>
					<td width="100">登录名</td>
					<td width="100">姓名</td>
					<td width="100">性别</td>
					<td width="100">年龄</td>
					<td width="100">学历</td>
					<td width="100">所属部门</td>
					<td width="200">岗位</td>
					<td>备注</td>
					<td>相关操作</td>
				</tr>
			</thead>

			<!--显示数据列表-->
			<tbody id="TableData" class="dataContainer" datakey="userList" style="text-align:center">

				<s:iterator value="manuser">
					<tr class="TableDetail1 template">
						<td>${loginName}&nbsp;</td>
						<td>${name}&nbsp;</td>
						<td>${gender}性&nbsp;</td>
						<td>${age}岁&nbsp;</td>
						<td>${degree}&nbsp;</td>
						<td>${department.name}&nbsp;</td>
						<td><s:iterator value="roles">
                		${name}
                	</s:iterator>&nbsp;</td>
						<td>${description}&nbsp;</td>
						<td>
						    <s:a
								action="user_delete?id=%{id}" onclick="return delConfirm()">删除</s:a>
							<s:a action="user_editUI?id=%{id}">修改</s:a> <s:a
								action="user_initPassword?id=%{id}"
								onclick="return window.confirm('您确定要初始化密码为1234吗？')">初始化密码</s:a>

						</td>
					</tr>
				</s:iterator>

			</tbody>
		</table>

		<!-- 其他功能超链接 -->
		<div id="TableTail">
			<div id="TableTail_inside">
				<s:a action="user_addUI">
					<img
						src="${pageContext.request.contextPath}/style/images/createNew.png" />
				</s:a>
			</div>
		</div>
	</div>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<div id="MainArea">
		<table cellspacing="0" cellpadding="0" class="TableStyle">
			<h3 style="text-align:center">女性员工列表(${womanusercount}人)</h3>
			<!-- 表头-->
			<thead>
				<tr align=center valign=middle id=TableTitle>
					<td width="100">登录名</td>
					<td width="100">姓名</td>
					<td width="100">性别</td>
					<td width="100">年龄</td>
					<td width="100">学历</td>
					<td width="100">所属部门</td>
					<td width="200">岗位</td>
					<td>备注</td>
					<td>相关操作</td>
				</tr>
			</thead>

			<!--显示数据列表-->
			<tbody id="TableData" class="dataContainer" datakey="userList" style="text-align:center">

				<s:iterator value="womanuser">
					<tr class="TableDetail1 template">
						<td>${loginName}&nbsp;</td>
						<td>${name}&nbsp;</td>
						<td>${gender}性&nbsp;</td>
						<td>${age}岁&nbsp;</td>
						<td>${degree}&nbsp;</td>
						<td>${department.name}&nbsp;</td>
						<td><s:iterator value="roles">
                		${name}
                	</s:iterator>&nbsp;</td>
						<td>${description}&nbsp;</td>
						<td>
						    <s:a
								action="user_delete?id=%{id}" onclick="return delConfirm()">删除</s:a>
							<s:a action="user_editUI?id=%{id}">修改</s:a> <s:a
								action="user_initPassword?id=%{id}"
								onclick="return window.confirm('您确定要初始化密码为1234吗？')">初始化密码</s:a>

						</td>
					</tr>
				</s:iterator>

			</tbody>
		</table>

		<!-- 其他功能超链接 -->
		<div id="TableTail">
			<div id="TableTail_inside">
				<s:a action="user_addUI">
					<img
						src="${pageContext.request.contextPath}/style/images/createNew.png" />
				</s:a>
			</div>
		</div>
	</div>

</body>
</html>
