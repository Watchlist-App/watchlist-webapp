'use strict'

angular.module('watchlistWebApp')
  .directive('movieMiniPreview', () ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      element.text 'this is the movieMiniPreview directive'
  )
