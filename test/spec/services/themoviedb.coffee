'use strict'

describe 'Service: Themoviedb', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Themoviedb = {}
  beforeEach inject (_Themoviedb_) ->
    Themoviedb = _Themoviedb_

  it 'should do something', () ->
    expect(!!Themoviedb).toBe true
