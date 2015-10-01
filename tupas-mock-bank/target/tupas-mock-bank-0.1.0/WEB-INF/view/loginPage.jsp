<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
    
<html>
	<head>

		<title>Log in</title>
	</head> 
	<body>
		<sf:form method="post"  action="/login/${bankId}" commandName="loginForm">
		<table>
			<tr>
				<td><sf:label path="name">User Name</sf:label></td>
				<td><sf:input path="name" /></td>
			</tr>
			<tr>
				<td><sf:label path="password">Age</sf:label></td>
				<td><sf:password path="password"  /></td>
			</tr>

			<tr>
				<td colspan="2">
					<input type="submit" value="Log in"/>
				</td>
			</tr>
		</sf:form>
	</body>
</html>
