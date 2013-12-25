'use strict'

angular.module('watchlistWebApp')
  .directive 'movie', () ->
    templateUrl: 'views/movie-directive.html'
    restrict: 'E'
    controller: ($scope) ->
