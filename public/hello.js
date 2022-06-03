//$(document).ready(function() {
//    $.ajax({
//        url: "http://localhost:8080/greeting"
//    }).then(function(data, status, jqxhr) {
//       $('.greeting-id').append(data.id);
//       $('.greeting-content').append(data.content);
//       console.log(jqxhr);
//    });
//});

angular.module('demo', [])
.controller('Hello', function($scope, $http) {
    $http.get('http://localhost:8080/greeting').
        then(function(response) {
            $scope.greeting = response.data;
        });
});