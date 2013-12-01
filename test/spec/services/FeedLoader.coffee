'use strict'

describe 'Service: Feedloader', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Feedloader = {}
  beforeEach inject (_Feedloader_) ->
    Feedloader = _Feedloader_

  it 'should do something', () ->
    expect(!!Feedloader).toBe true
