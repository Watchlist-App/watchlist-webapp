'use strict'

describe 'Directive: movieGrid', () ->

  # load the directive's module
  beforeEach module 'watchlistWebApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<movie-grid></movie-grid>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the movieGrid directive'
