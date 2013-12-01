'use strict'

angular.module('watchlistWebApp')
  .controller 'CinemasCtrl', ($scope, $routeParams, Fandango) ->

    $scope.cinemas = Fandango.newMovies $routeParams.zipcode, (data) ->
      $scope.cinemas = data.entries
