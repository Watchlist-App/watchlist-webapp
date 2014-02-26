'use strict'

describe 'Service: Rottentomatoes', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Rottentomatoes = {}
  beforeEach inject (_Rottentomatoes_) ->
    Rottentomatoes = _Rottentomatoes_

  it 'should do something', () ->
    expect(!!Rottentomatoes).toBe true
