'use strict'

angular.module('watchlistWebApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/signup',
        templateUrl: 'views/signup.html'
        controller: 'SignupCtrl'
      .otherwise
        redirectTo: '/'
