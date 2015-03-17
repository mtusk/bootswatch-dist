'use strict'

###*
 # @ngdoc function
 # @name bootswatchDistApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the bootswatchDistApp
###
angular.module 'bootswatchDistApp'
  .controller 'MainCtrl', ($scope, ghApi) ->
    
    $scope.branches = []
    $scope.tags = []

    $scope.getTags = (page) ->
      ghApi.tags().query page: page, (results, headers) ->
        $scope.tags = $scope.tags.concat results

        if results.length > 0
          $scope.getTags page+1
    
    $scope.getBranches = (page) ->
      ghApi.branches().query page: page, (results, headers) ->
        angular.forEach results, (branch) ->
          $scope.branches.push branch if branch.name not in ['master', 'gh-pages', 'gh-pages-src']

        if results.length > 0
          $scope.getBranches page+1


    $scope.getBranches 1
    $scope.getTags 1