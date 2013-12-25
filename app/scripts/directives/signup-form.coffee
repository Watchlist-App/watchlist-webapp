'use strict'

angular.module('watchlistWebApp')
  .directive 'signupForm', () ->
    templateUrl: 'views/signup.html'
    restrict: 'E'
    controller: 'SignupCtrl'
