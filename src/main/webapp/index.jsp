<%--
  Created by IntelliJ IDEA.
  User: Hamid
  Date: 1/24/2015
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="weather">
  <head>
    <title>WeatherCast</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.10/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.10/angular-animate.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="Skycons/skycons.js"></script>
    <script src="angular-loading-bar-master/src/loading-bar.js"></script>
    <script src="weather.js"></script>
    <script src="filters.js"></script>
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
        <div class="col-sm-5 col-sm-offset-2" id="titleHolder">
          <h1>WeatherCast</h1>
          <h2>Ultimate Weather Forecasts</h2>
        </div>
        <div class="col-sm-5" id="weatherLogoHolder">
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
  <div id="wrap" class="container">
    <section id="main">
      <div class="table-responsive">
        <table id="results01" class="table table-hover table-striped">
          <caption><h3>Weather Forecasts in <strong>{{weatherCTL.location | capitalize}}</strong></h3></caption>
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
  <footer class="footer">
  	<div class="container">
  		<p class="footer-text"><small>Desinged and Implemented By <a href="http://www.linkedin.com/in/hamidbehnampro"><strong>Hamid Ahmadi Behnam</strong></a></small></p>
  		<a href="http://www.hamidev.com/" target="_blank">
  			<div class="footer-content-holder">
  				<div class="footer-content">
  					<img src="mlogo.png" alt="Logo" width="60"
  						height="17.63478260869565" />
  				</div>
  			</div>
  		</a>
  		<div class="mlogo">
  		</div>
  		<div>
  			<a href="https://chrome.google.com/webstore/detail/weathercast/mgenhigolcnamgmohgeedmcenfimckin"><img src="ChromeWebStore_BadgeWBorder_v2_206x58.png" alt="Chrome WebStore"></a>
  			<a href="https://play.google.com/store/apps/details?id=com.your.company.WeatherCast"><img src="en_app_rgb_wo_60.png" alt="Google Play Store"></a>
  		</div>
  	</div>
  </footer>
  </body>
</html>
