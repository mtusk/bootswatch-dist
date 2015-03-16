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

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
