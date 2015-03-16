'use strict'

###*
 # @ngdoc service
 # @name bootswatchDistApp.ghApi
 # @description
 # # ghApi
 # Factory in the bootswatchDistApp.
###
angular.module 'bootswatchDistApp'
  .factory 'ghApi', ($resource) ->
    # Service logic
    # ...

    apiUrl = "https://api.github.com/repos/dbtek/bootswatch-dist"

    # Public API here

    tags: -> $resource "#{apiUrl}/tags"

    branches: -> $resource "#{apiUrl}/branches"