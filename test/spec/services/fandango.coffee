'use strict'

describe 'Service: Fandango', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Fandango = {}
  beforeEach inject (_Fandango_) ->
    Fandango = _Fandango_

  it 'should do something', () ->
    expect(!!Fandango).toBe true
