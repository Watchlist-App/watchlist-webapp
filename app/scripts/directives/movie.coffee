'use strict'

angular.module('watchlistWebApp')
  .directive 'movie', () ->
    templateUrl: 'views/directivesTemplates/movie.html'
    restrict: 'E'
    controller: ($scope) ->
