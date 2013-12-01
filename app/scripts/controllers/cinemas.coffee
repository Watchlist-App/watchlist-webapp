'use strict'

angular.module('watchlistWebApp')
  .controller 'CinemasCtrl', ($scope, Fandango) ->

    $scope.cinemas = Fandango.newMovies (data) ->
      $scope.cinemas = data.entries
