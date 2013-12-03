'use strict'

angular.module('watchlistWebApp')
  .controller 'HeaderController', ($scope, $location) ->

    $scope.isActive = (viewLocation) ->
      viewLocation == $location.path()
