
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies/Model/SourceResponse.dart';
class ApiManager {
  // function (static) to get it's access out of the class
  static const String baseUrl = "api.themoviedb.org";

  static Future<SourceResponse> getSources() async{
    /*
  https://api.themoviedb.org/3/movie/popular?api_key=d052d67854179f6ea4ff18c7db07adfd
  authourity : server name , apiname
  server name: base url (api.themoviedb.org)
  api name:/3/movie/popular
  */
    var url = Uri.https(baseUrl, '3/movie/popular',
        /*
    map (string , dynamic)
    api_key : and it's generated key
       */
        {"api_key": "d052d67854179f6ea4ff18c7db07adfd"});

     var response = await http.get(url); // response from server
    try{
      var bodyString = response.body; // response came in body
    var json = jsonDecode(bodyString); // switch string to json
    var sourceResponse =SourceResponse.fromJson(json); // fromjson
    return sourceResponse;
    }catch (e)
    {
      throw e;
    }
// try and catsh to handle error from server

  }
}
