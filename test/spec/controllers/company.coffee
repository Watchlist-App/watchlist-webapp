'use strict'

describe 'Controller: CompanyCtrl', () ->

  # load the controller's module
  beforeEach module 'watchlistWebApp'

  CompanyCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CompanyCtrl = $controller 'CompanyCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
