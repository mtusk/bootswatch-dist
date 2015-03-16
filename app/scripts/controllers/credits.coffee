'use strict'

###*
 # @ngdoc function
 # @name bootswatchDistApp.controller:CreditsCtrl
 # @description
 # # CreditsCtrl
 # Controller of the bootswatchDistApp
###
angular.module 'bootswatchDistApp'
  .controller 'CreditsCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
