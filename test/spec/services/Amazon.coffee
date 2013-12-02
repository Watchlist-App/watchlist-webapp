'use strict'

describe 'Service: Amazon', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Amazon = {}
  beforeEach inject (_Amazon_) ->
    Amazon = _Amazon_

  it 'should do something', () ->
    expect(!!Amazon).toBe true
