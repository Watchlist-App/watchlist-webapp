'use strict'

angular.module('watchlistWebApp')
  .controller 'CompanyCtrl', ($scope, $routeParams, Themoviedb, Sessionservice) ->

    Themoviedb.getCompany $routeParams.companyId, (company) ->
      $scope.company = company
      $scope.logo = Themoviedb.imageURL + Themoviedb.imageLarge + company.logo_path

      Themoviedb.getMoviesForCompany $scope.company.id, (movies) ->
        $scope.movies = movies.results
