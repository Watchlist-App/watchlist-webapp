'use strict'

describe 'Directive: movieMiniPreview', () ->

  # load the directive's module
  beforeEach module 'watchlistWebApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<movie-mini-preview></movie-mini-preview>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the movieMiniPreview directive'
