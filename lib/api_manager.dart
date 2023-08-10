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
// try and catsh to handle error from server
    ////link al sora https://image.tmdb.org/t/p/w500/1E5baAaEse26fej7uHcjOgEE2t2.jpg
  }

  static Future<MoviesResponse> getLatest({String? MovieSearch}) async {
    /*
  https://api.themoviedb.org/3/movie/latest
  */
    var url = Uri.https(baseUrl, '/3/movie/latest',
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
// try and catsh to handle error from server
    ////link al sora https://image.tmdb.org/t/p/w500/1E5baAaEse26fej7uHcjOgEE2t2.jpg
  }
}
