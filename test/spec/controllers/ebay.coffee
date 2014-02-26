'use strict'

describe 'Controller: EbayCtrl', () ->

  # load the controller's module
  beforeEach module 'watchlistWebApp'

  EbayCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    EbayCtrl = $controller 'EbayCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
