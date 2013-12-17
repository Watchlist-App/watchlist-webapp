'use strict'

angular.module('watchlistWebApp')
  .controller 'DvdsCtrl', ($scope, $routeParams, Amazon) ->

    movieTitle = $routeParams.movieTitle

    Amazon.getDvds movieTitle, (data) ->
      $scope.dvds = data
