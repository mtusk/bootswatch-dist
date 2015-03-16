'use strict'

###*
 # @ngdoc overview
 # @name bootswatchDistApp
 # @description
 # # bootswatchDistApp
 #
 # Main module of the application.
###
angular.module 'bootswatchDistApp', [
    'ngResource'
    'ngRoute'
    'ngMaterial'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/credits',
        templateUrl: 'views/credits.html'
        controller: 'CreditsCtrl'
      .when '/themes',
        templateUrl: 'views/themes.html'
        controller: 'ThemesCtrl'
      .otherwise
        redirectTo: '/'

