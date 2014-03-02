'use strict'

angular.module('watchlistWebApp')
  .directive 'movieGrid', () ->
    templateUrl: 'views/movie-grid-directive.html'
    restrict: 'E'
    link: (scope) ->
      scope.imageSize = "w300"
