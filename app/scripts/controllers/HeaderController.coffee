'use strict'

angular.module('watchlistWebApp')
  .controller 'HeaderController', ($scope, $location, Sessionservice) ->

    $scope.isActive = (viewLocation) ->
      $scope.user = Sessionservice.authentificatedUser
      viewLocation == $location.path()

    $scope.user = Sessionservice.authentificatedUser

    $scope.logOut = ->
      Sessionservice.logOut()
