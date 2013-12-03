'use strict'

describe 'Controller: HeadercontrollerCtrl', () ->

  # load the controller's module
  beforeEach module 'watchlistWebApp'

  HeadercontrollerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    HeadercontrollerCtrl = $controller 'HeadercontrollerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
