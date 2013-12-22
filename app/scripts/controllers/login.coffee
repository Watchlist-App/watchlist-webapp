'use strict'

angular.module('watchlistWebApp')
  .controller 'LoginCtrl', ($scope, $http, Sessionservice, $location, Userservice) ->

    user = null

    $scope.processForm = ->
      clearErrors()
      if emailEntered()
        sendForm ->
          if userExists() and passwordCorrect() then logIn()


    clearErrors = ->
      delete $scope.errorEmail
      delete $scope.errorPassword

    logIn = ->
      Sessionservice.logIn user
      $location.path ('/profile/' + user.id)

    userExists = ->
      $scope.errorEmail = "user not found" unless user?
      yes unless $scope.errorEmail?

    passwordCorrect = ->
      $scope.errorPassword = "invalid password" unless user.password is $scope.password
      yes unless $scope.errorPassword?

    emailEntered = ->
      $scope.errorEmail = "please enter email" unless $scope.email? and $scope.email isnt ''
      yes unless $scope.errorEmail?

    sendForm = (callback) ->
      user = null
      Userservice.query {email: $scope.email}, (response) ->
        user = response[0] if response[0]?
        callback()
