'use strict'

angular.module('watchlistWebApp')
  .controller 'DvdsCtrl', ($scope, $routeParams, Amazon) ->

    Amazon.getDvds "spartacus", (data) ->
      $scope.dvds = data
      console.log $scope.dvds
