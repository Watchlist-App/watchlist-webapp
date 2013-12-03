'use strict'

angular.module('watchlistWebApp')
  .controller 'SignupCtrl', ($scope, $http, Geolocation) ->

    $scope.formData = {}

    $scope.detectLocation = ->
      window.navigator.geolocation.getCurrentPosition (position) ->
        Geolocation.getAddressByPosition position, (data) ->
          $scope.address = data
          console.log data

    $scope.validateForm = ->

      if ($scope.formData.password != $scope.formData.confirmation)
        $scope.errorPassword = 'Passwords mismatch'
        $scope.validationSuccessful = no
      else
        $scope.errorPassword = ''
        $scope.validationSuccessful = yes

    $scope.processForm = ->
      if ($scope.validateForm())
        $http(

          method: 'POST'
          url: 'http://watchlist-app-server.herokuapp.com/user'
          data: $.param($scope.formData)
          headers:
            'Content-Type': 'application/x-www-form-urlencoded'

        ).success(

          (data) ->
            console.log data

        ).error(

          (data) ->
            console.log data
            if (data.errors[0].ValidationError)
              $scope.errorName = if data.errors[0].ValidationError.name then 'Please provide valid name' else ''
              $scope.errorEmail = if data.errors[0].ValidationError.email then 'Please provide valid email' else ''
              $scope.errorPassword = if data.errors[0].ValidationError.password then 'Password must contain at least 6 characters' else ''
              $scope.errorMessage = 'Validation error!'
            else
              $scope.errorEmail = "User with email: #{$scope.formData.email} is already registered"
              $scope.errorMessage = 'Email already registered'

        )
