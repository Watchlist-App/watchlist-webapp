'use strict'

describe 'Controller: ActorCtrl', () ->

  # load the controller's module
  beforeEach module 'watchlistWebApp'

  ActorCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ActorCtrl = $controller 'ActorCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
