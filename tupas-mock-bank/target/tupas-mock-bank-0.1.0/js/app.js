var taskManagerModule = angular.module('rahulAppForMockBank', [ 'ngAnimate' ]);

taskManagerModule
		.controller(
				'bankLoginController',
				function($scope, $http) {

					var urlBase = "http://localhost:8081/tupas-mock-bank/";
					$scope.toggle = true;
					$http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
					$scope.selectedPRoductforUpdate = 0;
					// get all tasks and display initially
					//$http.get(urlBase + '/bankList').success(function(data) {
						$scope.banks = [
{
	"bankName" : "Deske Bank ",
	"id" : "0001",
	"logo" : "http://www.danskebank.fi/verkkopalvelu/logo.gif"
	},
	{
	"bankName" : "Nordea Bank",
	"id" : "0002",
	"logo" : "http://www.danskebank.fi/verkkopalvelu/logo.gif"
	},
	{
	"bankName" : "False Bank",
	"id" : "0003",
	"logo" : "http://www.danskebank.fi/verkkopalvelu/logo.gif"
	}];

//					});

					
					
					
					$scope.selectedProduct = function selectedProduct(productId) {
						$scope.selectedPRoductforUpdate = productId;

					}

					
				});

// Angularjs Directive for confirm dialog box
taskManagerModule.directive('ngConfirmClick', [ function() {
	return {
		link : function(scope, element, attr) {
			var msg = attr.ngConfirmClick || "Are you sure?";
			var clickAction = attr.confirmedClick;
			element.bind('click', function(event) {
				if (window.confirm(msg)) {
					scope.$eval(clickAction);
				}
			});
		}
	};
} ]);