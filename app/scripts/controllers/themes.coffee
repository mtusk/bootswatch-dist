'use strict'

###*
 # @ngdoc function
 # @name bootswatchDistApp.controller:ThemesCtrl
 # @description
 # # ThemesCtrl
 # Controller of the bootswatchDistApp
###
angular.module 'bootswatchDistApp'
  .controller 'ThemesCtrl', ($scope, ghApi) ->
    $scope.loading = true
    $scope.tags = ghApi.tags().query page:2, ->
      $scope.loading = false