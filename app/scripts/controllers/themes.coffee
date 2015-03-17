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
    $scope.branches = []
    $scope.tags = []

    $scope.search = ''

    $scope.getTags = (page) ->
      ghApi.tags().query page: page, (results, headers) ->
        $scope.tags = $scope.tags.concat results

        if results.length > 0
          $scope.getTags page+1
        else
          $scope.loading = false

    $scope.getTags 1