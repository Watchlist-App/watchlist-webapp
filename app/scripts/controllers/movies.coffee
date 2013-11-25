'use strict'

angular.module('watchlistWebApp')
  .controller 'MoviesCtrl', ($scope, Themoviedb) ->

    $scope.movies = [{title: "Batman"}]
    Themoviedb.getMovies( (data) ->
      $scope.movies = data.results
    )
    console.log $scope.movies


