'use strict'

describe 'Controller: DvdsCtrl', () ->

  # load the controller's module
  beforeEach module 'watchlistWebApp'

  DvdsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    DvdsCtrl = $controller 'DvdsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
