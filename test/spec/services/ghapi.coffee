'use strict'

describe 'Service: ghApi', ->

  # load the service's module
  beforeEach module 'bootswatchDistApp'

  # instantiate service
  ghApi = {}
  beforeEach inject (_ghApi_) ->
    ghApi = _ghApi_

  it 'should do something', ->
    expect(!!ghApi).toBe true
