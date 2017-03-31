<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- 
			若 label 标签使用 %{getText('username')} 的方式就也可以从国际化资源文件中获取 value 值了 
			因为此时在对象栈中有 DefaultTextProvider 的一个实例, 该对象中提供了访问国际化资源文件的 getText() 方法
			同时还需要通知 struts2 框架 label 中放入的不再是一个普通的字符串, 而是一个 OGNL 表达式. 所以使用 %{} 把 getText()
			包装起来, 以强制进行 OGNL 解析. 
		-->
		<!--  
			页面上可以直接使用 <s:text name="" /> 标签来访问国际化资源文件里的 value 值. 
		-->
	<s:form action="" method="post">
		<s:textfield name="user" label="%{getText('username')}"></s:textfield>
		
		<!-- key 的方式是直接上资源文件中获取 value 值，替代label -->
		<s:textfield name="password" key="password"></s:textfield>
		
		<!-- s:text 的 name 属性从资源文件中获取 value 值 -->
		<s:text name="time">
			<s:param>${date }</s:param>
		</s:text>
		<a href="i18n?request_locale=zh_CN">中文</a>
		<a href="i18n?request_locale=en_US">English</a>
		<a href="index.jsp">Index</a>
		<s:submit></s:submit>
	</s:form>
</body>
</html>