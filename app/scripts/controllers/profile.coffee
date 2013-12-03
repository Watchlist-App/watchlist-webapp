'use strict'

angular.module('watchlistWebApp')
  .controller 'ProfileCtrl', ($scope, $routeParams, md5, Userservice, $location, Sessionservice) ->

    $scope.userId = $routeParams.userId
    $scope.user = Userservice.getUserWithId($routeParams.userId)

    $scope.deleteUser = ->
      Userservice.deleteUser($scope.user.id)
      $location.path '/users'

    $scope.logIn = ->
      Sessionservice.logIn $scope.user
      console.log Sessionservice.authentificatedUser

    $scope.logOut = ->
      Sessionservice.logOut()
