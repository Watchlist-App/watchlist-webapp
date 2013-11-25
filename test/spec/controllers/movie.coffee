'use strict'

describe 'Controller: MovieCtrl', () ->

  # load the controller's module
  beforeEach module 'watchlistWebApp'

  MovieCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MovieCtrl = $controller 'MovieCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
