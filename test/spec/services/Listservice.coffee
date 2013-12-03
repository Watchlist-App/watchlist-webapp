'use strict'

describe 'Service: Listservice', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Listservice = {}
  beforeEach inject (_Listservice_) ->
    Listservice = _Listservice_

  it 'should do something', () ->
    expect(!!Listservice).toBe true
