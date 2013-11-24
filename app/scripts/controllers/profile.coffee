'use strict'

angular.module('watchlistWebApp')
  .controller 'ProfileCtrl', ($scope, $routeParams, md5, Userservice) ->
    $scope.userId = $routeParams.userId
    $scope.user = Userservice.getUserWithId($routeParams.userId)
