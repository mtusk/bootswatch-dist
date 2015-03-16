'use strict'

###*
 # @ngdoc function
 # @name bootswatchDistApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the bootswatchDistApp
###
angular.module 'bootswatchDistApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
