<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html ng-app="rahulAppForMockBank">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Manager</title>
<link href='css/style.css' rel="stylesheet" type="text/css"></link>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/angular.js"></script>
<script type="text/javascript" src="js/angular-animate.js"></script>
<script type="text/javascript" src="js/app.js"></script>

</head>
<body>

	<div ng-controller="bankLoginController">
		<h2 class="page-title">Rahuls App .. </h2>

		<div id="task-panel" class="fadein fadeout showpanel panel"
			ng-show="toggle">
			<div class="panel-heading">
				<i class="panel-title-icon fa fa-tasks"></i> <span
					class="panel-title">Login First . . . . . .  . . . .  .  .     Choose a Bank for that </span>
				
			</div>
			<div class="panel-body">

				<table class="table">

					<tr class="well">
					<tr ng-repeat="bank in  banks">
						<td class="col-md-1"> # </td>
						
						<td class="col-md-2"><img ng-src="bank.logo" width="32px"
							height="32px" ng-click="login/{{bank.id}}" /></td>
						
						<td class="col-md-3">
						<a href="login/{{bank.id}}"> <b>{{bank.bankName}}</b>
						</a>
						</td>

						<td class="col-md-2"">
						<div class="panel-heading-controls">
							<button class="btn btn-warning" ng-click="login/{{bank.id}}">Login</button>
						</div>
						</td>
						<td class="col-md-3"">
						</td>
					</tr>
				</table>

			</div>
		</div>


	</div>
</body>
</html>