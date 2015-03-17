'use strict'

describe 'Controller: CreditsCtrl', ->

  # load the controller's module
  beforeEach module 'bootswatchDistApp'

  CreditsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CreditsCtrl = $controller 'CreditsCtrl', {
      $scope: scope
    }

  it 'should have a scope', ->
    expect(!!scope).toBe true
