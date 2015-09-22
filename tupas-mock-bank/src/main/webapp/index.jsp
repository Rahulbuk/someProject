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
							height="32px" ng-click="banks/login/{{bank.id}}" /></td>
						
						<td class="col-md-3">
						<a href="banks/login/{{bank.id}}"> <b>{{bank.bankName}}</b>
						</a>
						</td>

						<td class="col-md-2"">
						<div class="panel-heading-controls">
							<button class="btn btn-warning" ng-click="banks/login/{{bank.id}}">Login</button> 
						</div>
						</td>
						<td class="col-md-3"">
						</td>
						
						
					</tr>
				</table>

			</div>
		</div>
		<div id="add-task-panel" class="fadein fadeout addpanel panel"
			ng-hide="toggle">
			<div class="panel-heading">
				<i class="panel-title-icon fa fa-plus"></i> <span
					class="panel-title">Add New Productk</span>
				<div class="panel-heading-controls">
					<button ng-click="toggle = !toggle" class="btn btn-warning">Show
						All Products</button>
				</div>
			</div>
			<div class="panel-body">
				<!-- <div class="task"> -->
				<table class="table">
					<tr>
						<td>Product Name:*</td>
						<td><input type="text" ng-model="productName" /> <input
							type="hidden" ng-model="productID"></td>
					</tr>
					<tr>
						<td>Product Description:</td>
						<td>      <textarea class="form-control" rows="5" id="comment"ng-model="description"></textarea></td>
					</tr>
					<tr>
						<td>Product Category:*</td>
						<!-- <td><input type="text" ng-model="productCategory" /></td> -->
						<td>
						<select ng-model="productCategory" ng-options="category as category for category in categories">
								<option value="">-- Select --</option>						
						     	</select>
						    </td> 	
					</tr>
					<tr>
						<td>Product Manufacturer:</td>
						<td><input type="text" ng-model="brand" /></td>
					</tr>
					<tr>
						<td>Product Price:*</td>
						<td><input type="text" ng-model="price" /></td>
					</tr>
					<tr>
						<td>CURRENCY</td>
						<td><input type="text" ng-model="currency" maxlength="3"  /></td>
					</tr>
					<tr>
						<td>Product Stock:*</td>
						<td><input type="text" ng-model="stock" /></td>

					</tr>
					<tr>
						<td><br />
							<button ng-click="addProduct()" class="btn btn-warning">{{buttonName}}</button></td>
					</tr>
				</table>
			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content" style = "width:350px">
					<!-- <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Update Stock</h4>
					</div> -->
					<div class="modal-body">
						<span> Update Stock <input type="text" ng-model="stockUpdated" maxlength=8 style="width: 69px;" />
							<button type="button" class="btn btn-warning"
								data-dismiss="modal" ng-click="updateProductStock()">
								Update</button>
							<button type="button" class="btn btn-warning"
								data-dismiss="modal">Cancel</button>
						</span>

					</div>
					<!-- <div class="modal-footer">
						
					</div> -->
				</div>

			</div>
		</div>
	</div>
</body>
</html>