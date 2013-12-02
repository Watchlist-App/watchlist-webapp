'use strict'

describe 'Service: Itunes', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Itunes = {}
  beforeEach inject (_Itunes_) ->
    Itunes = _Itunes_

  it 'should do something', () ->
    expect(!!Itunes).toBe true
