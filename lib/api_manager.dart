import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies/models/movies_response.dart';

class ApiManager {
  // function (static) to get it's access out of the class
  static const String baseUrl = "api.themoviedb.org";

  static Future<MoviesResponse> getPopularMovies({String? MovieSearch}) async {
    /*
  https://api.themoviedb.org/3/movie/popular?api_key=d052d67854179f6ea4ff18c7db07adfd
  authourity : server name , apiname
  server name: base url (api.themoviedb.org)
  api name:/3/movie/popular
  */
    var url = Uri.https(
        baseUrl,
        '/3/movie/popular',
        /*
    map (string , dynamic)
    api_key : and it's generated key
       */
        {"api_key": "d052d67854179f6ea4ff18c7db07adfd", "q": MovieSearch});
    var response = await http.get(url); // response from server
    try {
      var bodyString = response.body; // response came in body
      var json = jsonDecode(bodyString); // switch string to json
      var sourceResponse = MoviesResponse.fromJson(json); // fromjson
      return sourceResponse;
    } catch (e) {
      throw e;
    }
  }
  static Future<MoviesResponse> getLatestMovie({String? MovieSearch}) async {
    try {
      // Construct the URL for the latest movie endpoint
      var url = Uri.https(
        baseUrl,
        '/3/movie/latest',
        // Include the API key as a query parameter
        {"api_key": "d052d67854179f6ea4ff18c7db07adfd"},
      );

      // Make the GET request
      var response = await http.get(url);

      if (response.statusCode == 200) {
        // Parse the JSON response
        var json = jsonDecode(response.body);
        var latestMovie = MoviesResponse.fromJson(json); // Replace with your parsing logic
        return latestMovie;
      } else {
        // If the API call fails, throw an exception
        throw Exception('Failed to load latest movie');
      }
    } catch (e) {
      // Handle any exceptions that occur during the API call
      throw e;
    }
  }
  static Future<MoviesResponse> getTopRatedMovies({String? MovieSearch}) async {
    try {
      // Construct the URL for the top_rated endpoint
      var url = Uri.https(
        baseUrl,
        '/3/movie/top_rated',
        // Include the API key as a query parameter
        {"api_key": "d052d67854179f6ea4ff18c7db07adfd"},
      );

      // Make the GET request
      var response = await http.get(url);

      if (response.statusCode == 200) {
        // Parse the JSON response
        var json = jsonDecode(response.body);
        var sourceResponse =
            MoviesResponse.fromJson(json); // Replace with your parsing logic
        return sourceResponse;
      } else {
        // If the API call fails, throw an exception
        throw Exception('Failed to load top-rated movies');
      }
    } catch (e) {
      // Handle any exceptions that occur during the API call
      throw e;
    }
  }
  static Future<MoviesResponse> getMovieDetails(int movieId) async {
    try {
      // Construct the URL for the specific movie endpoint
      var url = Uri.https(
        baseUrl,
        '/3/movie/$movieId',
        // Include the API key as a query parameter
        {"api_key": "d052d67854179f6ea4ff18c7db07adfd"},
      );

      // Make the GET request
      var response = await http.get(url);

      if (response.statusCode == 200) {
        // Parse the JSON response
        var json = jsonDecode(response.body);
        var movieDetails =
            MoviesResponse.fromJson(json); // Replace with your parsing logic
        return movieDetails;
      } else {
        // If the API call fails, throw an exception
        throw Exception('Failed to load movie details');
      }
    } catch (e) {
      // Handle any exceptions that occur during the API call
      throw e;
    }
  }
}
