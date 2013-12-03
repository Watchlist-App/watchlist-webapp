'use strict'

angular.module('watchlistWebApp')
  .controller 'LoginCtrl', ($scope, $http, Sessionservice, $location) ->


    $scope.processForm = ->
      if !$scope.email then !$scope.email = "nope"
      $http
        method: 'GET'
        url: 'http://watchlist-app-server.herokuapp.com/user'
        params:
          email: $scope.email
      .success (data) ->
        if (!data[0] or !$scope.email)
          $scope.errorEmail = "please enter valid email"
        else if (data[0].password != $scope.password)
          $scope.errorEmail = ""
          $scope.errorPassword = "invalid password"
        else
          Sessionservice.logIn data[0]
          $location.path ('/profile/' + data[0].id)
