'use strict'

describe 'Service: Ebay', () ->

  # load the service's module
  beforeEach module 'watchlistWebApp'

  # instantiate service
  Ebay = {}
  beforeEach inject (_Ebay_) ->
    Ebay = _Ebay_

  it 'should do something', () ->
    expect(!!Ebay).toBe true
