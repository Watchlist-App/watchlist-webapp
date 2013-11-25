'use strict'

angular.module('watchlistWebApp')
  .controller 'MoviesCtrl', ($scope, Themoviedb) ->

    Themoviedb.popularMovies( (data) ->
      $scope.movies = data.results
    )


