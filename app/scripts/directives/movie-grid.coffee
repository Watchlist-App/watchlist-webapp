'use strict'

angular.module('watchlistWebApp')
  .directive 'movieGrid', () ->
    templateUrl: 'views/directivesTemplates/movie-grid.html'
    restrict: 'E'
    controller: ($scope) ->
      $scope.imageSize = "w300"
