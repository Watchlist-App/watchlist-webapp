'use strict'

angular.module('watchlistWebApp')
  .controller 'DvdsCtrl', ($scope, $routeParams, Amazon) ->


    Amazon.getDvdsForMovieTitle "spartacus", (data) ->
      $scope.dvds = data
      console.log $scope.dvds
