'use strict'

describe 'Controller: ItunesCtrl', () ->

  # load the controller's module
  beforeEach module 'watchlistWebApp'

  ItunesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ItunesCtrl = $controller 'ItunesCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
