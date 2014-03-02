'use strict'

angular.module('watchlistWebApp')
  .directive('movieListItem', () ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      element.text 'this is the movieListItem directive'
  )
