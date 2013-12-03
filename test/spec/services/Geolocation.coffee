'use strict'

describe 'Service: Geolocation', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Geolocation = {}
  beforeEach inject (_Geolocation_) ->
    Geolocation = _Geolocation_

  it 'should do something', () ->
    expect(!!Geolocation).toBe true
