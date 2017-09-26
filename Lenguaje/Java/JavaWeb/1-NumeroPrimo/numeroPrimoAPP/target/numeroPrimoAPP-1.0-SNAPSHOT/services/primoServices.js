'use strict';

var myModule = angular.module('numeroPrimoAPP');
// Service that provides persons operations

myModule.factory('menuService', function ($resource) {
	return $resource('http://127.0.0.1:8080/numeroPrimo/api/restPrim/numerosPrimosAll/');
});


