'use strict'

describe 'Controller: MoviesCtrl', () ->

  # load the controller's module
  beforeEach module 'watchlistWebApp'

  MoviesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MoviesCtrl = $controller 'MoviesCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
