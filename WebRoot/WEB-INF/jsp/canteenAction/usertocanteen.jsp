<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- 显示数据 --%>
<html>
<head>
    <title>人员列表</title>
	<%@ include file="/WEB-INF/jsp/public/header.jspf" %>
</head>
<body>
 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 员工录入
        </div>
        <div id="Title_End"></div>
    </div>
</div>
<s:form action="canteen_adduser">
	<div id="MainArea" style="text-align:center">
	   <select name="userid">
	   		<option value="">--请选择员工录入--</option>
			<s:iterator value="userlist">	<!-- roleList会当作OGNL表达式解析成#(roleList) -->
				<option value="${id}">${name}</option>
			</s:iterator>	
		</select>
	    <!-- 其他功能超链接 -->
	    <div id="TableTail">
			<div id="TableTail_inside">
				<button type="submit">模拟进入</button>
	        </div>
	    </div>
	</div>
</s:form>
</body>
</html>
