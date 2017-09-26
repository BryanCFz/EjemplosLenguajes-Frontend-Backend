'use strict';
// Declare app level module which depends on views, and components
var app = angular.module('numeroPrimoAPP', ['ui.router', 'ngResource',  'ngGrid', 'app.utils', 'ngRoute', 'angular-storage', 'datatables']);

app.config(['$stateProvider', '$urlRouterProvider', 'USER_ROLES', function ($stateProvider, $urlRouterProvider, USER_ROLES) {

        $stateProvider
                .state('index_primo', {
                    url: '/listadoPrimos',
                    templateUrl: 'index_primo.html',
                    controller: 'primoControllers'
                })



/*
        $stateProvider
                .state('login', {
                    url: '/login',
                    templateUrl: 'login.html',
                    controller: 'loginFormController'
                })


                .state('home.citasPaciente', {
                    views: {
                        'contenidoOculto': {
                            url: '/paciente/lcitas',
                            templateUrl: 'agenda/pacientes/consultarCitas.html',
                            controller: 'citasController'
                        }}

                })
*/


    }]);

