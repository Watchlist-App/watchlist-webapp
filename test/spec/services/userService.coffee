'use strict'

describe 'Service: Userservice', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Userservice = {}
  beforeEach inject (_Userservice_) ->
    Userservice = _Userservice_

  it 'should do something', () ->
    expect(!!Userservice).toBe true
