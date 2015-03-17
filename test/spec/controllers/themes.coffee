'use strict'

describe 'Controller: ThemesCtrl', ->

  # load the controller's module
  beforeEach module 'bootswatchDistApp'

  ThemesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ThemesCtrl = $controller 'ThemesCtrl', {
      $scope: scope
    }

  it 'should have a scope', ->
    expect(!!scope).toBe true
