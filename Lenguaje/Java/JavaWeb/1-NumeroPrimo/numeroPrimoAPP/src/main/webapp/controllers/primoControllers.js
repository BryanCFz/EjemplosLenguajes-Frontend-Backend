'use strict';

 var myapp = angular.module('numeroPrimoAPP',[]);
     

     myapp.controller('numerosPrimosController', function($scope, $http){

          var primi = document.getElementById('idNumeroPrimo').value;

          $http.get('http://localhost:8080/numeroPrimo/api/restPrim/numerosPrimosAll/' + primi).success( function(response){
            $scope.listNumerosPrimos = response;
          });

        });