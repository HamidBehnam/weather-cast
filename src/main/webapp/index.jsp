<%--
  Created by IntelliJ IDEA.
  User: Hamid
  Date: 1/24/2015
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="weather">
  <head>
    <title>Weather Cast</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.10/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.10/angular-animate.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="Skycons/skycons.js"></script>
    <script src="angular-loading-bar-master/src/loading-bar.js"></script>
    <script src="weather.js"></script>
    <script src="loader.js"></script>
    <link rel="stylesheet" href="bootstrap-3.3.2-dist/css/bootstrap.css">
    <link rel="stylesheet" href="angular-loading-bar-master/src/loading-bar.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
  </head>
  <body ng-controller="weatherController as weatherCTL">
  <div class="jumbotron">
    <div class="container">
      <div class="row content">
        <div class="col-sm-5 col-sm-offset-2">
          <h1>Weather Cast</h1>
          <h2>Ultimate Weather Forecasts</h2>
        </div>
        <div class="col-sm-5">
          <img src="WeatherLogo.png" alt="Logo" width="225" height="200">
        </div>
      </div>
      <div class="row" ng-controller="searchController as searchCTL">
        <div class="col-sm-12">
          <div class="input-group">
            <input class="form-control" enter-action type="text" name="location" ng-model="searchCTL.location" id="location01"
                   placeholder="Location"
                   autocomplete="off">
            <span class="input-group-btn">
              <input class="btn btn-info" type="button" value="Go!" id="goButton" ng-click="searchCTL.getData(weatherCTL)">
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <section>
      <div class="table-responsive">
        <table id="results01" class="table table-hover table-striped">
          <caption><h3>Weather Forecasts in {{weatherCTL.location}}</h3></caption>
        <tr>
          <th>Day Of Week</th>
          <th>Low</th>
          <th>High</th>
          <th>Low Celsius</th>
          <th>High Celsius</th>
          <th>Condition</th>
          <th></th>
        </tr>
        <tr ng-repeat="day in weatherCTL.weathers">
          <td>{{day.day_of_week}}</td>
          <td>{{day.low}}</td>
          <td>{{day.high}}</td>
          <td>{{day.low_celsius}}</td>
          <td>{{day.high_celsius}}</td>
          <td>{{day.condition}}</td>
          <td><canvas id="canvas{{$index}}" width="64" height="64" add-icon="{{day}}"></canvas></td>
        </tr>
      </table>
      </div>
    </section>
  </div>
  </body>
</html>
