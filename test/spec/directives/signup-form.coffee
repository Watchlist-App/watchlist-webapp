'use strict'

describe 'Directive: signupForm', () ->

  # load the directive's module
  beforeEach module 'watchlistWebApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<signup-form></signup-form>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the signupForm directive'
