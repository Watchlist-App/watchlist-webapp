'use strict'

describe 'Controller: CinemasCtrl', () ->

  # load the controller's module
  beforeEach module 'watchlistWebApp'

  CinemasCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CinemasCtrl = $controller 'CinemasCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
