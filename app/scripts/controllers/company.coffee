'use strict'

angular.module('watchlistWebApp')
  .controller 'CompanyCtrl', ($scope, $routeParams, Themoviedb, Sessionservice) ->

    Themoviedb.getCompany $routeParams.companyId, (data) ->
      $scope.company = data
      $scope.logo = Themoviedb.imageURL + Themoviedb.imageLarge + data.logo_path
      Themoviedb.getMoviesForCompany $scope.company.id, (data) ->
        $scope.movies = data.results
