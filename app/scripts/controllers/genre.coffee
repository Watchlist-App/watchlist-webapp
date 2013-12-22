'use strict'

angular.module('watchlistWebApp')
  .controller 'GenreCtrl', ($scope, $routeParams, Themoviedb, Sessionservice) ->

    Themoviedb.getGenre $routeParams.genreId, (genre) ->
      $scope.genre = genre.name

    Themoviedb.getMoviesForGenre $routeParams.genreId, (movies) ->
      $scope.movies = movies.results
