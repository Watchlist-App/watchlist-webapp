'use strict'

angular.module('watchlistWebApp')
  .directive 'movieListItem', (Themoviedb) ->
    templateUrl: 'views/movie-list-item-directive.html'
    restrict: 'E'
    link: (scope, element, attrs) ->
      Themoviedb.getMovie scope.movieId, (movie) ->
        scope.movie = movie
