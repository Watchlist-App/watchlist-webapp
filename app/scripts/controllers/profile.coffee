'use strict'

angular.module('watchlistWebApp')
  .controller 'ProfileCtrl', ($scope, $routeParams, md5, Userservice, $location, Sessionservice) ->

    $scope.user = Userservice.get
      id: $routeParams.userId

    $scope.deleteUser = ->
      Userservice.delete
        id: $scope.user.id
      $location.path '/users'

    $scope.logIn = ->
      Sessionservice.logIn $scope.user
