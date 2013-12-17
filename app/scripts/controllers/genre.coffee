'use strict'

angular.module('watchlistWebApp')
  .controller 'GenreCtrl', ($scope, $routeParams, Themoviedb, Sessionservice) ->

    Themoviedb.getGenre $routeParams.genreId, (data) ->
      $scope.genre = data.name

    Themoviedb.getMoviesForGenre $routeParams.genreId, (data) ->
      $scope.movies = data.results
