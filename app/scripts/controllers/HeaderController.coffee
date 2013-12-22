'use strict'

angular.module('watchlistWebApp')
  .controller 'HeaderController', ($scope, $location, Sessionservice) ->

    $scope.session = Sessionservice

    $scope.isActive = (viewLocation) ->
      viewLocation == $location.path()

    $scope.logOut = ->
      Sessionservice.logOut()
